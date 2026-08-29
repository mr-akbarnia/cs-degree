#!/usr/bin/env bash
# One-time setup: creates labels and course milestones via GitHub CLI.
# Prereq: `gh auth login` done, and this repo pushed to GitHub.
# Run from inside the repo:  bash setup.sh
set -euo pipefail

echo "== Labels =="
gh label create assignment  --color 1d76db --description "Course assignment or lab" --force
gh label create exam        --color d93f0b --description "Timed, closed-book exam attempt" --force
gh label create log         --color c5def5 --description "Weekly progress log" --force
gh label create remediation --color fbca04 --description "Re-study triggered by exam error analysis" --force
gh label create stalled     --color b60205 --description "Stuck >1 week — needs a decision, not more effort" --force
gh label create algo-practice --color 0e8a16 --description "Background algorithms practice, ticking outside any single phase milestone" --force

echo "== Milestones (one per course) =="
milestones=(
  "P1: CS61A — Composing Programs"
  "P1: Missing Semester"
  "P2a: Nand2Tetris"
  "P2b: CS:APP (15-213)"
  "P3: Algorithms (Princeton/CLRS)"
  "P4a: OSTEP"
  "P4b: CS144 — Networking"
  "P4c: 15-445 — Databases"
  "P5a: Crafting Interpreters"
  "P5b: 6.824 — Distributed Systems"
  "P6: Sipser — Theory"
)
repo=$(gh repo view --json nameWithOwner -q .nameWithOwner)
for m in "${milestones[@]}"; do
  if output=$(gh api "repos/${repo}/milestones" -f title="$m" 2>&1); then
    echo "created: $m"
  elif grep -q '"already_exists"' <<<"$output"; then
    echo "exists:  $m"
  else
    echo "FAILED to create milestone: $m" >&2
    echo "$output" >&2
    exit 1
  fi
done

echo
echo "Done. Next: open the Phase 1 issues from the CS61A syllabus, then close"
echo "this terminal and go do Lab 0. The backlog is not the work."
