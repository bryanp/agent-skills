Skills for agentic workflows.

## Coding

See `./code` for coding-specific skills. I use a very hands-on and highly structured
approach when coding with agents. Note that I use [amp](https://ampcode.com).

### Self Documenting

It's easy to get lost in what is going on, so my workflow self-documents the thinking 
behind the implementation. When I'm diligent, this is where 60% of my time goes.

Features start by turning an idea into a plan. In most cases the first draft of the
plan is written by the agent. I'll then go make edits as needed, making changes myself
is usually faster than asking the agent to do it. Plans consist of granular steps, each
step corresponding to roughly the amount of work that would go into a commit.

Once implemented, a corresponding proof is written (see below) that provides additional
documentation on exactly what was done, why, and how a human can verify it. This not
only helps me verify work (or debug why the implementation is wrong) but I have found
it to improve the accuracy of the result.

### Showing Proof

I maintain that agents are not intelligent in any traditional sense. They require a lot
of coaxing to correctly implement what they are told in a reasonable way. One of the
more effective strategies I've found is to have the agent generate a proof of its work.
This is not entirely novel and is inspired by others like Simon Willison.

Note that this is _not_ actual proof that the code works; that is ultimately the job of
the human. This is only for the agent to deliver more reliably. Do your job and put the
effort in to understand the implementation and own the final result.

- https://simonwillison.net/2026/Feb/10/showboat-and-rodney/
- https://simonwillison.net/2025/Dec/18/code-proven-to-work/

### Code Audits

One gripe I have with agentic coding is that as agents improve and I change my mind about
how I want things done, the codebase starts to become disjointed in philosophy and style.
The code audit skill helps address this by carefully stepping through and making things
more consistent with the current ruleset.
