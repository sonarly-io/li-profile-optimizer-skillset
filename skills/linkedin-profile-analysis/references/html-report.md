# HTML Report Output

Use this when the user asks for a polished report, dashboard, chart view, shareable artifact, or HTML page.

## Recommendation

Use `assets/report-template.html` as the report template. It is a static, single-file HTML report with embedded CSS and small vanilla JavaScript score rendering. It has no external runtime dependency, so the user can open it locally in a browser.

Do not introduce a build step. Do not use React, shadcn/ui, Chart.js, or ECharts unless the user explicitly asks for a custom web app. For this use case, a dependency-free report is more reliable for non-technical users.

## How To Create The Report

1. Copy `assets/report-template.html` to the workspace with a clear output name such as `linkedin-profile-audit.html`.
2. Replace only the `auditData` object in the script block.
3. Preserve the CSS, layout, rendering functions, and disclaimer.
4. Fill every score with a number from 1 to 5 or `null` for unknown.
5. Use concise text. The report is a visual summary, not a long essay.

## Data Shape

```js
const auditData = {
  profileName: "Name or profile label",
  targetGoal: "Recruiter visibility / founder credibility / sales relevance / etc.",
  primaryReader: "Recruiter / buyer / investor / audience / etc.",
  targetContext: "Target role, market, offer, or category",
  generatedAt: "YYYY-MM-DD",
  confidence: "High / Medium / Low",
  coverage: {
    type: "Full-page screenshot / Section screenshots / Partial screenshots",
    visibleSections: ["Intro / Hero", "About"],
    missingSections: ["Recommendations"],
    notes: "Short confidence note."
  },
  overallScore: 72,
  verdict: "2-4 sentence summary.",
  dimensions: [
    { name: "Positioning", score: 4, evidence: "...", risk: "...", fix: "..." }
  ],
  sections: [
    { name: "Intro / Hero", score: 4, works: "...", gap: "...", fix: "..." }
  ],
  priorities: [
    { title: "Rewrite the headline", detail: "..." }
  ],
  suggestedHeadline: "...",
  suggestedAboutOpening: "...",
  factsToConfirm: ["Metric", "Proof point"]
};
```

## Score And Design Notes

- Overall score is 0-100.
- Dimension and section scores are 1-5.
- Overall score should use goal-specific weighting from `goal-intake.md` when the goal is known.
- Include the selected goal and primary reader in the report metadata.
- Use `null` for missing or unreadable sections so the report renders them as `Unknown`.
- Keep dimension and section notes attached to their score rows. Do not add separate scorecard or section-note tables.
- Use the `?` detail button in each score row for evidence, risk/gap, and fix text.
- Keep priorities to 3-7 items.
- Keep copy boxes short enough to scan.
- Keep the type scale restrained: title, section heading, body text, and small labels only.
- Keep the report layout as one column. Do not use a bento grid or side-by-side cards for the report sections.
- Keep the palette mixed and restrained: green/teal for strong, amber for weak, rose for severe, blue only for secondary emphasis.
- Avoid decorative visuals, large hero marketing layouts, and nested cards. This is an audit dashboard.
