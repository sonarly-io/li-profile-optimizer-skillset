#!/usr/bin/env sh
set -eu

REPO_TARBALL_URL="${REPO_TARBALL_URL:-https://github.com/sonarly-io/linkedin-profile-analyzer/archive/refs/heads/main.tar.gz}"
SKILL_NAME="linkedin-profile-analysis"
MARKER_BEGIN="<!-- linkedin-profile-analyzer:start -->"
MARKER_END="<!-- linkedin-profile-analyzer:end -->"

usage() {
  cat <<'EOF'
Install the LinkedIn Profile Analyzer skillset.

Usage:
  sh install.sh [--target all|agents|claude|codex|gemini] [--source PATH]

Examples:
  curl -fsSL https://raw.githubusercontent.com/sonarly-io/linkedin-profile-analyzer/main/install.sh | sh
  curl -fsSL https://raw.githubusercontent.com/sonarly-io/linkedin-profile-analyzer/main/install.sh | sh -s -- --target codex

Targets:
  all      Install into neutral agents, Claude, Codex, and Gemini locations.
  agents   Install into ~/.agents/skills as a provider-neutral fallback.
  claude   Install into ~/.claude/skills for Claude Code.
  codex    Install into ${CODEX_HOME:-~/.codex}/skills for Codex.
  gemini   Install into ~/.gemini/skills and add imports to ~/.gemini/GEMINI.md.
EOF
}

target="all"
source_dir=""

while [ "$#" -gt 0 ]; do
  case "$1" in
    --target)
      target="${2:-}"
      shift 2
      ;;
    --source)
      source_dir="${2:-}"
      shift 2
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Unknown argument: $1" >&2
      usage >&2
      exit 2
      ;;
  esac
done

case "$target" in
  all|agents|claude|codex|gemini) ;;
  *)
    echo "Unsupported target: $target" >&2
    usage >&2
    exit 2
    ;;
esac

need_command() {
  if ! command -v "$1" >/dev/null 2>&1; then
    echo "Missing required command: $1" >&2
    exit 1
  fi
}

script_dir() {
  case "$0" in
    */*) cd "$(dirname "$0")" >/dev/null 2>&1 && pwd ;;
    *) pwd ;;
  esac
}

prepare_source() {
  if [ -n "$source_dir" ]; then
    if [ ! -d "$source_dir/skills/$SKILL_NAME" ]; then
      echo "Source does not contain skills/$SKILL_NAME: $source_dir" >&2
      exit 1
    fi
    printf '%s\n' "$source_dir"
    return
  fi

  local_dir="$(script_dir)"
  if [ -d "$local_dir/skills/$SKILL_NAME" ]; then
    printf '%s\n' "$local_dir"
    return
  fi

  need_command curl
  need_command tar

  tmp_dir="$(mktemp -d 2>/dev/null || mktemp -d -t linkedin-profile-analyzer)"
  curl -fsSL "$REPO_TARBALL_URL" | tar -xz -C "$tmp_dir" --strip-components=1
  printf '%s\n' "$tmp_dir"
}

copy_skill() {
  src="$1/skills/$SKILL_NAME"
  dest_root="$2"
  mkdir -p "$dest_root"
  rm -rf "$dest_root/$SKILL_NAME"
  cp -R "$src" "$dest_root/$SKILL_NAME"
  printf 'Installed %s -> %s\n' "$SKILL_NAME" "$dest_root/$SKILL_NAME"
}

append_gemini_imports() {
  repo_root="$1"
  gemini_home="${GEMINI_HOME:-$HOME/.gemini}"
  gemini_md="$gemini_home/GEMINI.md"
  skill_path="$gemini_home/skills/$SKILL_NAME"

  mkdir -p "$gemini_home"
  touch "$gemini_md"

  if grep -F "$MARKER_BEGIN" "$gemini_md" >/dev/null 2>&1; then
    printf 'Gemini imports already present in %s\n' "$gemini_md"
    return
  fi

  {
    printf '\n%s\n' "$MARKER_BEGIN"
    printf '# LinkedIn Profile Analyzer Skillset\n'
    printf '@%s/SKILL.md\n' "$skill_path"
    printf '@%s/references/analysis-rubric.md\n' "$skill_path"
    printf '@%s/references/output-templates.md\n' "$skill_path"
    printf '@%s/references/ethics-and-boundaries.md\n' "$skill_path"
    printf '%s\n' "$MARKER_END"
  } >> "$gemini_md"

  printf 'Updated Gemini context -> %s\n' "$gemini_md"
}

repo_root="$(prepare_source)"

case "$target" in
  all|agents)
    copy_skill "$repo_root" "${AGENTS_HOME:-$HOME/.agents}/skills"
    ;;
esac

case "$target" in
  all|claude)
    copy_skill "$repo_root" "${CLAUDE_HOME:-$HOME/.claude}/skills"
    ;;
esac

case "$target" in
  all|codex)
    copy_skill "$repo_root" "${CODEX_HOME:-$HOME/.codex}/skills"
    ;;
esac

case "$target" in
  all|gemini)
    copy_skill "$repo_root" "${GEMINI_HOME:-$HOME/.gemini}/skills"
    append_gemini_imports "$repo_root"
    ;;
esac

printf 'Done. Restart or refresh your agent session if it does not pick up new skills automatically.\n'
