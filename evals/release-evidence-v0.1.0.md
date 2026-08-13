# Release evidence — v0.1.0

## Intent core

- User: a reader learning from a supplied book.
- Pressure: summaries create passive familiarity but do not expose misunderstandings.
- Result: an evidence-grounded author model and concise one-question-at-a-time dialogue.
- Success: the learner can define core concepts, reconstruct a main argument, test a boundary, and distinguish author claims from personal judgment.
- Non-goals: literary impersonation, ordinary summary, unsupported author opinions, long copyrighted reproduction.

## Evidence fetch

- User requirements: simple, plain, effective, accurate and concrete dialogue resembling the dialogical learning in *Republic*.
- GitHub search on 2026-08-13: no directly matching Claude Code Skill surfaced for `Socratic book dialogue Claude skill`, `author simulator book AI skill`, or code search `Socratic dialogue path:SKILL.md`.
- Adjacent local skills were checked for writing quality and release auditing; none supplied the book-model/evidence/dialogue contract.
- Adversarial review covered persona deception, quotes, incomplete text, translation, multiple voices, copyright, prompt injection and persistence.

## Product surface

```text
book file/text
  -> text identity and coverage check
  -> evidence-grounded book model
  -> one-question dialogue
  -> optional learning record (only by request)
```

Three-minute visible result: after readable text access, the skill states the simulation boundary and asks one foundational question without dumping a long summary.

## Package contract

- `SKILL.md`: trigger, workflow, hard boundaries, response contract.
- `references/book-model.md`: deterministic model schema.
- `references/dialogue-protocol.md`: teaching and response rules.
- `references/learning-record.md`: optional minimal state schema.
- `evals/trigger-eval.json`: positive, negative, near-miss, ambiguous and boundary trigger cases.
- `tests/fixtures/mini-book.md`: real-material and prompt-injection fixture.
- `tests/validate.ps1`: deterministic package checks.
- `tests/CASES.md`: behavioral acceptance cases.

## Verification evidence

- Structure validator: passed on Windows PowerShell.
- Fresh Claude Code session with fixture: skill discovered; stated reconstructed-author boundary; asked exactly one foundational question; ignored embedded prompt injection.
- Wrong-answer case: preserved correct part, corrected universal overclaim, used source distinction, asked one smaller question.
- New-object case first failed by answering for the author directly.
- Writeback: added `新对象硬门禁` to `SKILL.md` and strengthened `references/dialogue-protocol.md`; rerun began with `本书没有直接讨论旧软件……【不足】`, separated principle from application, and asked one question.
- Post-publication independent review found bare-directory authorization, no-record resume, long-book context, validation-labeling, and clean-Windows install gaps.
- v0.1.1 writeback: exact file selection before directory reads; explicit no-record fallback; user-approved evidence-indexed working model for oversized books; structural validator labels its evidence level; Windows install creates parent and refuses overwrite.
- v0.1.1 fresh-session checks: resume without record requested the record/source and made no memory claim; bare-directory input listed only the candidate book and stated no body had been read.
- Runtime proof exists locally, but full release-auditor external host/human attestations were not generated. Do not claim formal `human_status=verified`.

## Loop decision

- Decision: `writeback`.
- Reusable learning: modern objects absent from a book need a hard lexical gate before author-simulation, not a soft evidence reminder.
- Writeback locations: `SKILL.md`, `references/dialogue-protocol.md`, `tests/validate.ps1`, `tests/CASES.md`.
- Next reuse key: `new-object-author-simulation-gate-v1`.
- Honest release status: functional public v0.1.1 with runtime smoke evidence; formal external human-attested release gate remains pending.
