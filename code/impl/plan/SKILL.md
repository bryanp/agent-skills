---
name: impl-plan
description: Document an implementation plan based on given context
---

Write a concise yet precise and detailed implementation plan for the feature,
bug fix, etc that is captured by your current context.

# Rule: Content

Write the plan clearly, concisely, and with as much detail as necessary. Keep it
as short as possible without losing context. The plan should contain as much
detail as needed for a human or future agent to pick it up and build and deliver
a working pull-request that meets the specification of the user.

# Rule: Granularity

Keep plans focused on a single aspect of the current context. Complex features
should likely be captured as small, focused implementation plans in separate files.
Roughly speaking, a plan step should represent the work performed in a single commit.

# Rule: Filesystem

Plans live in the `.agents/plans` folder within the workspace root.

# Rule: Naming Convention

Plans are named like `{timestamp}-{plan}/{sequence}-{step}.md`. 

- `timestamp` is a unix timestamp based on the current date/time
  - format like `YYYYMMDDHHMM`; get with the `time` skill
- `plan` is a concise 2-5 word descriptive slug of the plan's goals 
- `sequence` is a two-digit number representing what step of the plan is described 
  - (see "granularity" above for how complex plans are broken down
- `step` is a 2-5 word descriptive slug of the step's goals
