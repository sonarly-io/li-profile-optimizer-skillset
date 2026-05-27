# LinkedIn Profile Analyzer Skillset

A portable AI skillset for auditing and improving LinkedIn profiles from full-page screenshots or section screenshots. It supports evidence-led profile scorecards, recruiter/search optimization, founder or executive positioning, sales/outreach relevance, content authority analysis, and section rewrites.

## Supported Agents

- **Claude / Claude Code**: use the `skills/linkedin-profile-analysis` folder as a Claude Skill.
- **Codex**: use the same `skills/linkedin-profile-analysis` folder as a Codex Skill, or let Codex read this repo's `AGENTS.md`.
- **Gemini CLI**: run from this repo or copy `GEMINI.md` into a project using Gemini CLI.
- **Gemini Apps Gems**: paste `platforms/gemini-gems/linkedin-profile-analyzer.md` into a custom Gem's instructions.

## Recommended Install

Use the native plugin marketplace commands for Claude Code and Codex.

Claude Code:

```bash
claude plugin marketplace add sonarly-io/linkedin-profile-analyzer
claude plugin install lpa@sonarly
```

Codex:

```bash
codex plugin marketplace add sonarly-io/linkedin-profile-analyzer
codex plugin add lpa@sonarly
```

After the Sonarly npm package is published, the cross-agent installer can also be exposed as:

```bash
npx @sonarly/lpa add
```

Until then, direct shell install remains available:

```bash
curl -fsSL https://raw.githubusercontent.com/sonarly-io/linkedin-profile-analyzer/main/install.sh | sh
```

Direct shell target installs:

```bash
curl -fsSL https://raw.githubusercontent.com/sonarly-io/linkedin-profile-analyzer/main/install.sh | sh -s -- --target codex
curl -fsSL https://raw.githubusercontent.com/sonarly-io/linkedin-profile-analyzer/main/install.sh | sh -s -- --target claude
curl -fsSL https://raw.githubusercontent.com/sonarly-io/linkedin-profile-analyzer/main/install.sh | sh -s -- --target gemini
```

The canonical skill folder is also available at:

```text
https://github.com/sonarly-io/linkedin-profile-analyzer/tree/main/skills/linkedin-profile-analysis
```

## Native Plugin Package

This repo is packaged as:

- Claude marketplace `sonarly`, plugin `lpa`
- Codex marketplace `sonarly`, plugin `lpa`
- npm package `@sonarly/lpa` for the optional cross-agent installer

## Skill Path

```text
skills/linkedin-profile-analysis
```

## Screenshot Workflow

The recommended input is one full-page screenshot of the LinkedIn profile from desktop Chrome.

1. Open the profile in Chrome.
2. Scroll to the top.
3. Open DevTools: `Option` + `Command` + `I` on Mac, or `Ctrl` + `Shift` + `I` on Windows/Linux.
4. Open Command Menu: `Command` + `Shift` + `P` on Mac, or `Ctrl` + `Shift` + `P` on Windows/Linux.
5. Type `Capture full size screenshot` and press Enter.
6. Upload the downloaded PNG to Claude, Codex, or Gemini and ask for the LinkedIn Profile Analyzer.

If full-page capture does not work, upload section screenshots: intro/hero, About, Featured, Activity/posts, Experience, Skills, Recommendations, and Education/certifications. Blur private contact details before uploading.

## Installation

### Cross-Agent Installer

The installer copies the skill into:

- `~/.agents/skills/linkedin-profile-analysis` as a provider-neutral fallback
- `~/.claude/skills/linkedin-profile-analysis` for Claude Code
- `${CODEX_HOME:-~/.codex}/skills/linkedin-profile-analysis` for Codex
- `~/.gemini/skills/linkedin-profile-analysis` and imports it from `~/.gemini/GEMINI.md` for Gemini CLI

```bash
npx @sonarly/lpa add
```

This requires publishing `@sonarly/lpa` to npm first. Use `install.sh` directly until the package is published.

### Claude Native Plugin Install

Claude Code has a native plugin marketplace flow:

```bash
claude plugin marketplace add sonarly-io/linkedin-profile-analyzer
claude plugin install lpa@sonarly
```

### Codex Native Plugin Install

Codex has a native plugin marketplace flow:

```bash
codex plugin marketplace add sonarly-io/linkedin-profile-analyzer
codex plugin add lpa@sonarly
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
Use the LinkedIn Profile Analyzer to audit these screenshots for a senior product leadership search. Score each profile section, identify the top fixes, and rewrite the headline and About opening.
```

## Publishing Checklist

1. Create a public GitHub repository.
2. Push this repo to `main`.
3. Test install in Claude, Codex, and Gemini CLI.
