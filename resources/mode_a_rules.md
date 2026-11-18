# Mode A — Rules for study notes (Markdown)

Read this file only when you write or change chapter content.

## A1. Document architecture

- `00-blueprint.md`: Exam Blueprint with three parts: 0.1 syllabus and priorities, 0.2 what you must know, 0.3 exercise-type matrix.
- `NN-slug.md`: one file per topic, from fundamentals to exam applications.
- Every chapter has five mandatory parts, in this order.

## A2. The five mandatory parts

Each chapter file begins with one heading `# Chapter N: Title`. Then:

| Part | Heading | Minimum content |
|---|---|---|
| 0. Intuition | `## N.0 Intuition from zero` | Problem solved, everyday analogy, prerequisites and symbols introduced before any formalism |
| 1. Theory | `## N.1 Theory` | Definitions, axioms and theorems as blockquotes headed by the name, with hypotheses, boundary conditions and validity limits. Comparison tables where the sources contrast cases |
| 2. Formulas | `## N.2 Formulas` | Numbered equations, complete derivations, variable legend under every equation |
| 3. Procedures | `## N.3 Standard procedures (SOP)` | One SOP for each exercise type in the chapter, with the four blocks |
| 4. Exercises | `## N.4 Exercises` | All exercises on the topic from notes, sheets and exams, ordered from easiest to hardest, each with four-stage solutions |

## A3. Theory

- Name every definition and theorem: `> **Definition N.1 — Name.**` followed by the statement in the same blockquote.
- Mark items frequently asked in oral or theory questions with `[Exam Theory Focus]`.
- State the hypotheses. If the sources do not state them, write `[Not Covered in Sources]`. Never invent them.
- Use tables to contrast ciphers, modes, models or attacks.
- Explanations added to bridge gaps in the slides are marked `> **[Elaboration / Derivation Bridge]**` at the start of the blockquote.

## A4. Equations and LaTeX

Numbered display equation, using the tag inside the math block:

```text
$$ x = \left( \sum_{i=1}^{k} a_i M_i y_i \right) \bmod M \tag{2.1} $$
```

Legend immediately below:

```text
Legend (2.1):
- $M_i$ = product of all moduli except $m_i$ [dimensionless]
- $y_i$ = inverse of $M_i$ modulo $m_i$ [dimensionless]
```

Rules:
- Numbering: `\tag{N.M}`, N = chapter number, M = progressive index. Every numbered equation is followed by its legend.
- Legend: every symbol, its plain meaning, and its SI unit, or `[dimensionless]`, or `[bit]` for binary data.
- Derivations: use `\begin{aligned}` with one step per line. Justify each step next to it, for example `(modular arithmetic property)`. Skip no step.
- Notation: keep the source's exact symbols, subscripts and sign conventions. If the source uses $U$, do not write $E$.
- Use LaTeX commands, not Unicode symbols inside formulas: `\times`, `\equiv`, `\oplus`, `\bmod`.
- Recompute every number in an example. Close the calculation with a verification line, for example `Check: 550 · 355 = 195250 = 111·1759 + 1 ≡ 1 (mod 1759)`.

## A5. Standard procedures (SOP)

Every SOP has the heading `### SOP N.M — Title` and four blocks, in this order:

```text
### SOP 2.1 — Title

1. Recognition — how to spot it on the exam: typical phrasing, given data, structural cues.
2. Setup — equations to write down (Eq. (2.1)), conventions, preliminary checks.
3. Recipe — Step 1 -> Step 2 -> Step 3, every operation written out.
4. Traps and checks — typical mistakes, exam variants, dimensional and limiting-case checks.
```

- Identifiers `SOP N.M` are fixed. Matrix rows refer to them, so never rename them.
- One SOP per exercise type in the chapter. Frequent types also appear in the matrix.

## A6. Exercises

Order: elementary exercises first, then sheet and exam exercises, then the harder variants.

```text
### Exercise N.1 — Title
Provenance: [Source: Past Exam — 2025-07-14, Problem 2] · Uses SOP 2.1

**Stage 1 — Statement and data.** ...

**Stage 2 — Archetype and SOP.** ...
**Stage 3 — Execution.** ... complete steps ...
**Stage 4 — Result and check.** ... dimensional or numerical check ...
```

- Provenance is mandatory: `[Source: Lecture Notes — Ch. 1, Example 2]`, `[Source: Project Exercises — Sheet 01, Ex. 3]`, or `[Source: Past Exam — ...]`.
- Every exercise names its SOP.
- Gather every exercise on the topic from every file in the project. Merge duplicates, and list all sources on the merged exercise.
- Supplementary exercises are added only when the sources are sparse. Mark them `[Supplementary Skill Builder — Level 1|2|3]`. Level 1 = warm-up, level 2 = standard exercise, level 3 = full exam simulation.
- Numbers you construct yourself are marked `[Supplementary Skill Builder]`, never `[Source: ...]`.
- If a topic has no exercises in the project, write `[No Project Exercises Found for This Topic]` and add 2–3 exercises built from the formulas and SOPs.

## A7. Provenance and zero hallucination

- Every section, formula, theorem and exercise carries a provenance tag.
- Do not invent citations, constants, exam requirements or grading weights. If a fact is not in the sources, write `[Not Covered in Sources]`.
- If a source is ambiguous, give both readings and mark it `[To verify against the source]`.

## A8. Coverage ledger (no skipped points)

Before writing a chapter:
1. List internally every item of the chapter's sources: each slide or section with definitions, theorems, formulas, procedures, exercises and exam questions.
2. Assign each item to a part of the chapter, to an SOP, to an exercise, or to `[Not Covered in Sources]`.
3. After writing, check the list against the file. No item may be left unassigned.

For long sources, work one source file at a time, and add each part as a complete block. Do not rewrite blocks already written unless they change.

## A9. Style

- Notes in the language of the sources.
- Complete sentences, plain-language explanations, and a technical term defined the first time it appears.
- No filler sentences, and no concept repeated in two blocks.
- The text must be readable by a student who has never seen the subject.
