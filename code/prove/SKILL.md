---
name: prove
description: Prove that your work is satisfactory
---

Generate proof that the work you implemented satisfies the original request. 

# Rule: Content

The proof should be as concise as possible. It should thoroughly demonstate
to a human how the implementation works and how they can verify it works. 
Provide steps they can take to run and verify the implementation themselves 
(cli commands, clicking through in a web browser, etc).

Approach this like you would a presentation to your boss.

# Rule: Filesystem

Proofs live in the `.agents/proofs` folder within the workspace root.

# Rule: Naming Convention

Capture proofs in a `{plan}/{step}.md` file corresponding to the plan
and step you are providing proof for.
