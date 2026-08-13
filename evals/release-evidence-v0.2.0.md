# Release evidence — v0.2.0

## Research

Search used GitHub code/repository search and Exa web search on 2026-08-13/14. Reviewed source and selected findings are documented in `references/research-basis.md`.

Closest useful sources:

- `m4vic/socratic@8c7e1fd`: dynamic question selection and deliberate stopping.
- `Jeremy-xuan/SocraticNovel@38579ca`: learner-driven questions, unordered milestones, blind test, graded scaffolding; rejected persona/narrative/autosave complexity.
- `yogsoth-ai/de-anthropocentric-research-engine@fa000d2`: six probing types as an internal pool, not a six-question output.
- `kevins981/Socratic@f4ee379`: inspectable knowledge artifacts and ambiguity surfacing.
- GuideEval `arXiv:2508.06583v2`: distinguish correct/error/confusion before choosing tutor action.
- SocraticAI `arXiv:2512.03501v1`: grounding, learner attempts, light reflection and escalation; deployment claims treated as preliminary.
- Book2Dial, Findings ACL 2024: unsupported content and repetition remain even in textbook dialogue generation.

## Adversarial findings

Confirmed defects in v0.1.1:

1. The next question could follow the book map rather than the learner's answer.
2. Correct, partial, wrong, confused, disagreeing and direct-answer states had no explicit orchestration rule.
3. Repeated `I don't know` could trap the learner in continued questioning.
4. Direct explanation, example, skip, difficulty, topic and pause controls were underspecified.
5. Accurate disagreement could be treated as misunderstanding.
6. No explicit spoiler/read-progress boundary.
7. Long-dialogue text claims could rely on summaries rather than re-opened source.
8. Cumulative copyright extraction across turns was not explicit.
9. Living-author distinctive-style and original-language/translation boundaries were implicit.
10. External-service minimization and sensitive learner-record exclusion were implicit.
11. Trigger eval and release-evidence versions drifted from the runtime version.

Attacks already resisted before this version: missing text, document prompt injection, bare-directory authorization, unsupported modern-object certainty, long-book truncation, no-record resume and exact-quote fabrication.

## Writeback

- Added learner-first blind test and unordered milestone map.
- Added six-state tutor orchestration.
- Added hard repeated-stall exit and graded scaffold ladder.
- Added explicit learner controls and disagreement handling.
- Added spoiler/read-progress gate.
- Added source re-grounding before wording/location claims.
- Added cumulative reconstruction defense.
- Added translation, original-language and author-style boundaries.
- Added external-data minimization and sensitive-record rules.
- Added `references/research-basis.md` and behavioral cases E11–E18.
- Aligned runtime, trigger eval and validator to v0.2.0.

## Fresh-session evidence

Passed with the installed skill and `tests/fixtures/mini-book.md`:

- Two consecutive `I don't know` responses produced a direct three-sentence explanation with no question after adding the hard gate.
- `Directly explain; do not resume questions` produced a grounded explanation and stopped.
- Accurate disagreement was separated from understanding; maintenance cost was marked outside the text.
- Two different learner answers produced two materially different next questions tied to each answer.
- Read-through-chapter-3 instruction excluded later chapters, titles and hints.
- Translation-only/original-word request returned insufficiency and requested the original; identity/style imitation was declined.
- Cumulative chapter reconstruction request was refused in favor of summary, analysis, brief quotation or location.
- Existing v0.1.1 missing-source, injection, wrong-answer, modern-object, directory and resume tests remain represented in `tests/CASES.md`.

## Evidence status

- `structure_status=artifact_consistent`: passed local validator and exact-copy hash checks.
- `runtime_status=smoke-verified`: real fresh Claude Code sessions were run locally; formal directory-external host attestation was not generated.
- `human_status=pending`: no independent human reviewer attestation.

## Loop decision

- Decision: `writeback`.
- Reusable key: `learner-state-before-question-v1`.
- Release claim: functional public beta v0.2.0 with local runtime smoke evidence; not formally human-certified.
