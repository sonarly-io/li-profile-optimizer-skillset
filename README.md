# LI Profile Optimizer Skillset

Analyze a LinkedIn profile from screenshots and get a scored profile audit with prioritized fixes.

## Install

Claude Code:

```bash
claude plugin marketplace add sonarly-io/li-profile-optimizer-skillset
claude plugin install lpo@sonarly
```

Codex:

```bash
codex plugin marketplace add sonarly-io/li-profile-optimizer-skillset
codex plugin add lpo@sonarly
```

Gemini:

Use `platforms/gemini-gems/li-profile-optimizer-skillset.md` as custom Gem instructions.

## Capture Your Profile

Use desktop Chrome:

1. Open your LinkedIn profile.
2. Scroll to the top.
3. Open DevTools: `Option` + `Command` + `I` on Mac, or `Ctrl` + `Shift` + `I` on Windows/Linux.
4. Open Command Menu: `Command` + `Shift` + `P` on Mac, or `Ctrl` + `Shift` + `P` on Windows/Linux.
5. Type `Capture full size screenshot` and press Enter.
6. Upload the downloaded PNG to Claude or Codex.

If full-page capture does not work, upload screenshots of: intro/hero, About, Featured, Activity/posts, Experience, Skills, Recommendations, and Education/certifications.

## Use

```text
Use LI Profile Optimizer Skillset to audit these screenshots. Score each profile section, identify the top fixes, and rewrite the headline and About opening.
```

Blur private contact details before uploading screenshots.

## Privacy

Screenshots are processed by the AI provider you use, such as Claude or Codex. Do not upload private contact details, third-party private data, or profiles you do not have permission to analyze.

This skillset gives profile communication feedback only. Do not use it for hiring, compensation, eligibility, credit, legal, insurance, or other high-impact decisions.

## Maintainers

See `CONTRIBUTING.md` and `SECURITY.md`. Run `./scripts/validate.sh` before publishing changes.
