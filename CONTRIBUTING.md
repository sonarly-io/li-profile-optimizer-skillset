# Contributing

Thanks for improving LI Profile Optimizer Skillset.

## Ground Rules

- Keep the README simple for nontechnical users.
- Do not add scraping, automated LinkedIn browsing, or hidden data collection.
- Do not add guidance for hiring, compensation, eligibility, credit, legal, insurance, or similar high-impact decisions.
- Do not add prompts that infer protected or sensitive traits.
- Use placeholders for unverified claims such as `[metric]` or `[proof point]`.

## Research Updates

When changing research-backed guidance:

1. Prefer sources published or refreshed in the last 90 days.
2. Use official LinkedIn documentation for product mechanics.
3. Mark preprints, syndicated articles, and practitioner posts as lower-confidence context.
4. Update `Last reviewed` and the stale-after date in `skills/linkedin-profile-analysis/references/parameter-research.md`.
5. Do not claim a source is recent after the stale-after date without rechecking it.

## Validation

Run before opening a pull request:

```bash
./scripts/validate.sh
```

This checks the root skill, bundled Codex plugin copy, plugin manifests, Claude marketplace manifest, JavaScript syntax in HTML reports, and that `skills/` matches `.agents/plugins/lpo/skills/`.

Some checks require local Codex skill/plugin validator scripts or the Claude CLI. If those tools are unavailable, the script prints a skip message. Set `SKILL_VALIDATE_PY` or `PLUGIN_VALIDATE_PY` to point at custom validator locations.
