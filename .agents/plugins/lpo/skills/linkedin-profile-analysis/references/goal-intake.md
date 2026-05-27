# Goal Intake

Ask these questions before scoring when the user's goal is missing or ambiguous. Keep it short and proceed if the user already gave enough context.

## Required Question

Ask:

> What is the main goal for this LinkedIn profile?

Offer these choices:

1. **Job search / recruiter visibility**: get interviews, be found by recruiters, fit a target role.
2. **Personal brand / thought leadership**: build authority, followers, speaking/media opportunities.
3. **Customer acquisition / sales**: attract buyers, partners, leads, or consulting clients.
4. **Founder / investor credibility**: build trust with investors, hires, advisors, press, or partners.
5. **Executive presence / board credibility**: communicate senior leadership, board readiness, or industry authority.
6. **General cleanup**: make the profile clearer and more professional.

## Optional Follow-Ups

Ask at most two if they materially change scoring:

- Who is the primary reader? Recruiter, hiring manager, buyer, investor, founder, executive peer, journalist, or community audience?
- What target role, market, offer, or category should the profile be optimized for?
- What region, language, seniority, or industry constraints matter?
- Should the output include rewritten headline/About copy or only an audit?

Do not ask all questions by default. If the user uploaded screenshots and the goal is obvious from the request, analyze and state the assumed goal.

## Goal-Specific Weighting

Use this weighting to adjust emphasis and prioritization. Scores still use the same 1-5 scale; the weights affect overall score, order of recommendations, and which fixes matter most.

### Job Search / Recruiter Visibility

Highest weight:
- Search discoverability
- Positioning clarity
- Experience
- Skills
- Credibility density

Important signals:
- Target role titles and variants.
- Recruiter-readable headline.
- Current/recent role scope.
- Skills aligned with target role.
- Measurable achievements and progression.
- Location/remote or availability signals when relevant.

Lower weight:
- Content authority unless the target role depends on public expertise.
- Sales-style CTAs.

### Personal Brand / Thought Leadership

Highest weight:
- Content authority
- Narrative coherence
- Positioning clarity
- Featured proof
- Visual trust and hierarchy

Important signals:
- Clear topic lane.
- Posts/comments show judgment and originality.
- Featured content demonstrates expertise.
- About section communicates audience promise.
- Banner and headline reinforce the same authority category.

Lower weight:
- Keyword density unless discoverability is part of the goal.

### Customer Acquisition / Sales

Highest weight:
- Audience fit
- Conversion readiness
- Credibility density
- Featured proof
- Positioning clarity

Important signals:
- Buyer/problem language.
- Clear offer, customer category, or outcome.
- Case studies, testimonials, proof assets, demos, or links.
- Low-friction contact path.
- Activity that builds trust with the buyer audience.

Lower weight:
- Recruiter-oriented role keyword optimization.

### Founder / Investor Credibility

Highest weight:
- Credibility density
- Narrative coherence
- Visual trust and hierarchy
- Featured proof
- Positioning clarity

Important signals:
- Market category and company story.
- Traction, team, customer, funding, product, or strategic proof.
- Founder credibility and domain insight.
- Featured press, deck, demo, product, or thought leadership.
- Activity that signals market expertise.

Lower weight:
- Job-search availability cues.

### Executive Presence / Board Credibility

Highest weight:
- Credibility density
- Narrative coherence
- Visual trust and hierarchy
- Recommendations / social proof
- Content authority

Important signals:
- Leadership scope, transformation, governance, strategy, P&L, market authority.
- Board/advisory readiness signals.
- Senior recommendations and recognized institutions.
- Thought leadership with strategic judgment.

Lower weight:
- Tactical keyword stuffing.

### General Cleanup

Use balanced weighting across all dimensions. Prioritize first-screen clarity, obvious credibility gaps, missing high-value sections, and low-effort fixes.

## Overall Score Calculation

If producing an overall score, calculate it as a goal-weighted average of visible dimension scores. Do not include `Unknown` dimensions in the denominator. State when the overall score is approximate because screenshots are partial.

Default weights by goal:

| Dimension | Job Search | Brand | Sales | Founder | Executive | General |
|---|---:|---:|---:|---:|---:|---:|
| Screenshot coverage | 1 | 1 | 1 | 1 | 1 | 1 |
| Positioning clarity | 5 | 5 | 5 | 5 | 4 | 5 |
| Visual trust and hierarchy | 3 | 4 | 3 | 4 | 5 | 3 |
| Credibility density | 5 | 4 | 5 | 5 | 5 | 4 |
| Audience fit | 4 | 4 | 5 | 4 | 4 | 4 |
| Search discoverability | 5 | 2 | 2 | 2 | 2 | 3 |
| Narrative coherence | 4 | 5 | 4 | 5 | 5 | 4 |
| Conversion readiness | 3 | 3 | 5 | 3 | 2 | 3 |
| Content authority | 2 | 5 | 4 | 4 | 4 | 3 |
