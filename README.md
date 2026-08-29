# cs-degree

My self-directed computer science education. Equivalent rigor to a top-tier
CS undergraduate core, built on real university courses and their actual
assignments and exams.

**Started:** September 2026 · **Schedule:** 15–20 hrs/week · **Horizon:** ~2 years, re-forecast from data

## The rules (non-negotiable)

1. **A course is done when its projects and exams are done.** Lectures and
   reading are inputs, not progress.
2. **Struggle window:** minimum 30 min stuck before consulting anything;
   ~1 day for project-level bugs. AI is a reviewer and hint-giver
   (see `CLAUDE.md`), never a solver.
3. **Retrieval over re-reading:** after every study session, free-recall
   write-up before checking the source. Anki daily (only self-written cards).
4. **One course at a time**, plus algorithms practice ticking in the
   background from Phase 3 onward.
5. **Every topic ends with a Feynman note** in `notes/` — explained from
   memory, simply, in writing.
6. **Real exams, closed-book, timed, self-graded brutally** → `exams/`.
7. **Weekly log** every Sunday → `logs/` (what I did, where I'm stuck,
   hours actually spent).

## Curriculum

| Phase | Course / Material | Key artifacts | Est. |
|-------|-------------------|---------------|------|
| 1 | **CS61A — Composing Programs** (Berkeley) + Missing Semester (MIT) | Hog, Cats, Ants, Scheme interpreter | 4–6 mo |
| 2a | **Nand2Tetris** I & II | CPU, assembler, VM, compiler | 2–3 mo |
| 2b | **CS:APP** (CMU 15-213) | bomb lab, attack lab, malloc lab, shell lab | 2–3 mo |
| 3 | **Algorithms** (Sedgewick/Wayne, Princeton) + selected CLRS | continuous problem sets | 4–5 mo |
| 4a | **OSTEP** projects | scheduler, memory, concurrency, FS projects | 2–3 mo |
| 4b | **CS144** (Stanford networking) | my own TCP implementation | 2 mo |
| 4c | **CMU 15-445** (databases) | buffer pool, B+ tree, query executor | 2–3 mo |
| 5a | **Crafting Interpreters** | two interpreters (Java tree-walk, C bytecode VM) | 2–3 mo |
| 5b | **MIT 6.824** (distributed systems) | Raft, sharded KV store, in Go | 3 mo |
| 6 | **Sipser** — Theory of Computation | problem sets, proofs | 3–4 mo |
| — | *(optional)* ML: fast.ai or CS189 | — | — |

## Workflow

- **Milestone = course.** **Issue = assignment/lab/exam**, opened from the
  syllabus in advance so the whole degree is a visible backlog.
- Every assignment is done on a branch and closed via **PR**. Before merge:
  self-review against the checklist, then Claude Code professor-review
  (per `CLAUDE.md`), then justify flagged decisions, then merge.
- Directory per phase: `phase1-cs61a/`, `phase2-nand2tetris/`, …

## Repo map

```
CLAUDE.md        # AI tutor rules of engagement — read this first
notes/           # Feynman write-ups, one per completed topic
exams/           # timed, closed-book attempts + self-grading
logs/            # weekly progress logs
phaseN-*/        # coursework, one directory per course
```

## Why public

Accountability, and evidence. In two years this repo contains a CPU built
from gates, a memory allocator, TCP, a database engine, two interpreters,
and Raft — written by someone who also ran infrastructure serving a billion
events a month. That combination is the point.
