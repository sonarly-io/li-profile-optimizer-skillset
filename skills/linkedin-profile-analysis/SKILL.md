---
name: linkedin-profile-analysis
description: Analyze LinkedIn profiles from full-page screenshots, section screenshots, or pasted profile text for positioning, credibility, recruiter discoverability, buyer/investor relevance, content strategy, and prioritized profile improvements. Use when Codex is asked to audit a LinkedIn profile, optimize a headline/about/experience section, compare a profile to a target role or audience, rewrite profile sections, assess thought-leadership signals, produce a LinkedIn profile scorecard, or guide a user through capturing LinkedIn profile screenshots for analysis.
---

# LinkedIn Profile Analysis

## Overview

Use this skill to turn user-provided LinkedIn screenshots or profile material into an evidence-led profile audit, scorecard, rewrite plan, or section-level copy. Prefer screenshots because they preserve visual hierarchy, first-screen positioning, section order, Featured content, Activity, and profile completeness. Analyze what is observable in the supplied material, tie every judgment to evidence, and separate profile improvements from career advice.

## Intake

Start by identifying the profile analysis context:

- **Material**: full-page screenshot, section screenshots, pasted profile text, job description, target audience, or competitor examples.
- **Goal**: recruiter visibility, founder credibility, sales/outreach conversion, executive presence, creator/content growth, investor trust, or general cleanup.
- **Constraints**: tone, geography, industry norms, seniority, desired roles, keywords, and sections the user wants rewritten.
- **Missing data**: ask only for critical missing inputs. If enough profile material exists, proceed and flag assumptions.

Read `references/goal-intake.md` when the goal is missing or ambiguous. Ask the required goal question before scoring unless the user's request already gives a clear goal. Use the selected goal to weight the overall score and prioritize recommendations.

If the user has not supplied profile material yet, ask for screenshots first. Read `references/screenshot-intake.md` and give the user the shortest capture instructions that fit their environment.

Do not browse, scrape, or infer private LinkedIn data unless the user explicitly asks for browsing and the available tools permit it. Prefer user-provided profile content. If browsing public pages, cite sources and obey site access limits.

## Workflow

1. Build a profile snapshot: name/title if available, current positioning, target audience, industry, seniority, proof points, content signals, and visible gaps.
2. Determine screenshot coverage:
   - **Best**: one Chrome full-page screenshot of the whole profile.
   - **Good**: section screenshots of intro/hero, About, Featured, Activity/posts, Experience, Skills, Recommendations, Education/certifications, and contact/sidebar if visible.
   - **Limited**: any subset; analyze visible sections and mark missing sections as `Unknown`.
3. Determine the user's goal and primary reader:
   - **Job search / recruiter visibility**: optimize for recruiters, hiring managers, search, target-role fit.
   - **Personal brand / thought leadership**: optimize for authority, audience growth, topic consistency.
   - **Customer acquisition / sales**: optimize for buyer trust, offer clarity, proof, conversion.
   - **Founder / investor credibility**: optimize for market narrative, traction, trust, strategic proof.
   - **Executive presence / board credibility**: optimize for seniority, governance, leadership scope, authority.
   - **General cleanup**: balanced profile clarity and completeness.
4. Select the relevant analysis mode:
   - **General audit**: use all scorecard dimensions.
   - **Recruiter/search optimization**: emphasize headline, About, experience, keywords, role alignment, and proof of scope.
   - **Founder/executive/investor credibility**: emphasize narrative, market category, traction proof, authority, and trust signals.
   - **Sales/outreach relevance**: emphasize buyer clarity, pain/category language, credibility, calls to action, and content authority.
   - **Creator/thought leadership**: emphasize topical consistency, post themes, audience promise, and expertise signals.
5. Score only dimensions with enough evidence. Mark missing evidence as `Unknown`, not as a failure.
6. Score each visible section separately before giving overall recommendations.
7. Calculate the overall score using the goal-specific weighting from `references/goal-intake.md` when an overall score is requested.
8. Prioritize fixes by impact and effort for the selected goal. Prefer concrete section edits over generic advice.
9. When rewriting, preserve factual claims unless the user confirms new details. Use placeholders for unverified metrics.

## Analysis Rubrics

Read `references/analysis-rubric.md` when producing a full audit, screenshot audit, scorecard, role-fit analysis, or audience-fit analysis.
Read `references/parameter-research.md` when the user asks for research-backed rationale, when adjusting the rubric, or when you need deeper context for why a parameter matters. Apply its recency rule: prefer sources from the last 90 days, and label older official platform documentation as stable context.

Core dimensions:

- **Screenshot coverage**: Are enough profile sections visible to make a reliable judgment?
- **Positioning clarity**: Can the reader understand who this person helps, what they do, and why it matters in the first screen?
- **Visual trust and hierarchy**: Do banner, photo, layout, first-screen density, and section ordering support the intended positioning?
- **Credibility density**: Are claims backed by outcomes, scope, recognizable context, metrics, artifacts, or endorsements?
- **Audience fit**: Does language match the intended reader's buying, hiring, investing, or collaboration criteria?
- **Search discoverability**: Are role, category, seniority, skills, geography, and domain keywords naturally present?
- **Narrative coherence**: Do headline, About, experience, featured items, and activity reinforce the same professional story?
- **Conversion readiness**: Is there a clear next action, contact path, portfolio proof, or reason to engage?
- **Content authority**: Do posts, comments, featured assets, and topic choices build trust with the intended audience?

## Output Formats

Read `references/output-templates.md` when the user asks for a particular deliverable or when a structured response would help.
Read `references/html-report.md` when the user asks for a polished HTML report, dashboard, charts, shareable artifact, or browser-openable deliverable.
Read `references/research-basis.md` for compact source context, or `references/parameter-research.md` for deeper parameter-level research context.

Default audit format:

1. **Verdict**: 2-4 sentences on current profile effectiveness for the stated goal.
2. **Goal Context**: selected goal, primary reader, target role/market/offer, and assumptions.
3. **Screenshot Coverage**: visible sections, missing sections, and confidence level.
4. **Scorecard**: table with dimension, score, evidence, risk, and fix.
5. **Section Metrics**: score visible profile sections individually.
6. **Top Priorities**: 3-7 ordered improvements with expected impact.
7. **Suggested Copy**: rewrites for requested sections, with placeholders for unverified facts.
8. **Open Inputs**: missing facts that would materially improve the profile.

Keep outputs direct and decision-oriented. Avoid padded explanations of LinkedIn basics unless the user asks.

When creating an HTML report, use the bundled template at `assets/report-template.html` and only replace the `auditData` object. The report should include charted dimension scores, section scores, top priorities, suggested copy, and facts to confirm.

## Ethics And Boundaries

Read `references/ethics-and-boundaries.md` before handling sensitive, scraped, third-party, or high-stakes profile analysis.

Key rules:

- Do not infer protected characteristics, personal life details, health, politics, religion, ethnicity, or other sensitive traits from a profile.
- Do not make hiring, credit, insurance, legal, or similarly high-impact determinations. Provide profile communication analysis only.
- Do not help misrepresent credentials, fabricate metrics, impersonate someone, or create deceptive engagement.
- Clearly label assumptions, unknowns, and unverified suggested claims.
