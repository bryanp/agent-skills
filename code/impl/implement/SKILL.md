---
name: impl-implement
description: Implement a step of an implementation plan
---

Implement a specific step of the given implementation plan.

# Rule: Show Proof

Use the `prove` skill to capture proof that the plan step is correct.

# Rule: Verify Proof

Iterate between implementation and proof until you're sure the implementation
is correct. Use the oracle to compare the implementation to the plan and proof
so that the conclusion is unbiased. Err on the side of correctness!

# Rule: Finding Next Step

When the next step to implement is ambiguous, scan all steps in the plan and
pick the very next unimplemented step. If you still aren't sure what to do, ask
the user for clarification.

# Rule: Commit Work

Use the `git-commit` skill to commit your work after proving it works.

# Rule: Frontmatter

Add the following yaml frontmatter to the plan step markdown file:

```
implemented: true
```

# Rule: Filesystem

Plans live in the `.agents/plans` folder within the workspace root.
