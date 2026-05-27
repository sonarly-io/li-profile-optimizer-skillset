# LinkedIn Profile Analyzer Skillset

A portable AI skillset for auditing and improving LinkedIn profiles. It supports evidence-led profile scorecards, recruiter/search optimization, founder or executive positioning, sales/outreach relevance, content authority analysis, and section rewrites.

## Supported Agents

- **Claude / Claude Code**: use the `skills/linkedin-profile-analysis` folder as a Claude Skill.
- **Codex**: use the same `skills/linkedin-profile-analysis` folder as a Codex Skill, or let Codex read this repo's `AGENTS.md`.
- **Gemini CLI**: run from this repo or copy `GEMINI.md` into a project using Gemini CLI.
- **Gemini Apps Gems**: paste `platforms/gemini-gems/linkedin-profile-analyzer.md` into a custom Gem's instructions.

## Recommended Distribution

Use a public GitHub repo. The core skill is plain Markdown plus reference files, so NPM is unnecessary unless this later adds a separate executable CLI package.

Install everything with one command:

```bash
curl -fsSL https://raw.githubusercontent.com/sonarly-io/linkedin-profile-analyzer/main/install.sh | sh
```

Install one target only:

```bash
curl -fsSL https://raw.githubusercontent.com/sonarly-io/linkedin-profile-analyzer/main/install.sh | sh -s -- --target codex
curl -fsSL https://raw.githubusercontent.com/sonarly-io/linkedin-profile-analyzer/main/install.sh | sh -s -- --target claude
curl -fsSL https://raw.githubusercontent.com/sonarly-io/linkedin-profile-analyzer/main/install.sh | sh -s -- --target gemini
```

The canonical skill folder is also available at:

```text
https://github.com/sonarly-io/linkedin-profile-analyzer/tree/main/skills/linkedin-profile-analysis
```

## Skill Path

```text
skills/linkedin-profile-analysis
```

## Installation

### One Command

The installer copies the skill into:

- `~/.agents/skills/linkedin-profile-analysis` as a provider-neutral fallback
- `~/.claude/skills/linkedin-profile-analysis` for Claude Code
- `${CODEX_HOME:-~/.codex}/skills/linkedin-profile-analysis` for Codex
- `~/.gemini/skills/linkedin-profile-analysis` and imports it from `~/.gemini/GEMINI.md` for Gemini CLI

```bash
curl -fsSL https://raw.githubusercontent.com/sonarly-io/linkedin-profile-analyzer/main/install.sh | sh
```

### Claude / Claude Code

Copy the skill folder into Claude's skills directory:

```bash
mkdir -p ~/.claude/skills
cp -R skills/linkedin-profile-analysis ~/.claude/skills/
```

Restart Claude Code or refresh the session so the skill is discovered.

### Codex

Copy the skill folder into Codex's skills directory:

```bash
mkdir -p "${CODEX_HOME:-$HOME/.codex}/skills"
cp -R skills/linkedin-profile-analysis "${CODEX_HOME:-$HOME/.codex}/skills/"
```

Restart Codex so the new skill is discovered.

### Gemini CLI

Run Gemini CLI from the repo root so it reads `GEMINI.md`, or copy `GEMINI.md` into another project.

### Gemini Apps Gems

Create a new Gem in Gemini Apps and paste the contents of:

```text
platforms/gemini-gems/linkedin-profile-analyzer.md
```

Optionally upload the files in `skills/linkedin-profile-analysis/references` as Gem knowledge files.

## Example Prompt

```text
Use $linkedin-profile-analysis to audit this LinkedIn profile for a senior product leadership search. Score the profile, identify the top fixes, and rewrite the headline and About opening.
```

## Publishing Checklist

1. Create a public GitHub repository.
2. Push this repo to `main`.
3. Test install in Claude, Codex, and Gemini CLI.
