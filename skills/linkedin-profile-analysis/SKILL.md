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

If the user has not supplied profile material yet, ask for screenshots first. Read `references/screenshot-intake.md` and give the user the shortest capture instructions that fit their environment.

Do not browse, scrape, or infer private LinkedIn data unless the user explicitly asks for browsing and the available tools permit it. Prefer user-provided profile content. If browsing public pages, cite sources and obey site access limits.

## Workflow

1. Build a profile snapshot: name/title if available, current positioning, target audience, industry, seniority, proof points, content signals, and visible gaps.
2. Determine screenshot coverage:
   - **Best**: one Chrome full-page screenshot of the whole profile.
   - **Good**: section screenshots of intro/hero, About, Featured, Activity/posts, Experience, Skills, Recommendations, Education/certifications, and contact/sidebar if visible.
   - **Limited**: any subset; analyze visible sections and mark missing sections as `Unknown`.
3. Select the relevant analysis mode:
   - **General audit**: use all scorecard dimensions.
   - **Recruiter/search optimization**: emphasize headline, About, experience, keywords, role alignment, and proof of scope.
   - **Founder/executive/investor credibility**: emphasize narrative, market category, traction proof, authority, and trust signals.
   - **Sales/outreach relevance**: emphasize buyer clarity, pain/category language, credibility, calls to action, and content authority.
   - **Creator/thought leadership**: emphasize topical consistency, post themes, audience promise, and expertise signals.
4. Score only dimensions with enough evidence. Mark missing evidence as `Unknown`, not as a failure.
5. Score each visible section separately before giving overall recommendations.
6. Prioritize fixes by impact and effort. Prefer concrete section edits over generic advice.
7. When rewriting, preserve factual claims unless the user confirms new details. Use placeholders for unverified metrics.

## Analysis Rubrics

Read `references/analysis-rubric.md` when producing a full audit, screenshot audit, scorecard, role-fit analysis, or audience-fit analysis.

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

Default audit format:

1. **Verdict**: 2-4 sentences on current profile effectiveness for the stated goal.
2. **Screenshot Coverage**: visible sections, missing sections, and confidence level.
3. **Scorecard**: table with dimension, score, evidence, risk, and fix.
4. **Section Metrics**: score visible profile sections individually.
5. **Top Priorities**: 3-7 ordered improvements with expected impact.
6. **Suggested Copy**: rewrites for requested sections, with placeholders for unverified facts.
7. **Open Inputs**: missing facts that would materially improve the profile.

Keep outputs direct and decision-oriented. Avoid padded explanations of LinkedIn basics unless the user asks.

## Ethics And Boundaries

Read `references/ethics-and-boundaries.md` before handling sensitive, scraped, third-party, or high-stakes profile analysis.

Key rules:

- Do not infer protected characteristics, personal life details, health, politics, religion, ethnicity, or other sensitive traits from a profile.
- Do not make hiring, credit, insurance, legal, or similarly high-impact determinations. Provide profile communication analysis only.
- Do not help misrepresent credentials, fabricate metrics, impersonate someone, or create deceptive engagement.
- Clearly label assumptions, unknowns, and unverified suggested claims.
