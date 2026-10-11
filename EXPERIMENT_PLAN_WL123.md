# Suggested WL-1/2/3 Structural Diagnostic

Status: proposed protocol. No result from this experiment belongs in the paper
until the protocol has been run and its artifacts are frozen.

## Question

When graphs are grouped by their 1-, 2-, and 3-WL distinguishability, how often
does the learned IGSSE point set collide on non-isomorphic graphs? This is an
empirical diagnostic for the representation, not a claim that IGSSE is equivalent
to or stronger than any WL test.

## Graph Families

1. Enumerate connected unlabeled graphs with small order from a reproducible
   graph atlas. Use constant node attributes for the pure-structure condition.
2. Add regular and strongly regular graph pairs where low-order WL tests are
   known to collide. Keep the exact graph identifiers and generators.
3. Add attributed variants with controlled node colors. Record the initial color
   convention used by the WL implementation.

## WL Strata

For every non-isomorphic pair `(G, G')`, run stable 1-WL, 2-WL, and 3-WL
refinement under the same initial colors. Assign exactly one stratum:

- `WL1-separable`
- `WL1-collide_WL2-separable`
- `WL2-collide_WL3-separable`
- `WL3-collide`

Do not infer these labels from graph size, degree sequence, or a literature
description. Store the refinement fingerprints and the stopping iteration.

## IGSSE Protocol

1. Train PairAttn-based IGSSE without task labels on each declared graph-pair
   recovery instance. This is a trained embedding protocol, not a zero-shot
   graph mapping.
2. For each graph, compute the deterministic decoder state `H_dec` with noise
   disabled. Compute an invariant graph signature from the configured attention
   pooling reader and retain the node-aligned point set.
3. Repeat the evaluation under at least five consistent node permutations per
   graph. Permute nodes, edges, feature rows, and all evaluation masks together.
4. Declare an IGSSE collision only when all permutation-averaged graph signatures
   are within a fixed tolerance and PairAttn cannot separate the two declared
   relation targets under the stated decoder metric.

## Metrics

- Pair collision rate in each WL stratum.
- PairAttn link F1/AUC/AP and content R2/cosine for each graph family.
- Permutation deviation of graph signatures, PairAttn scores, and content
  reconstruction.
- Fraction of WL-separable pairs that the point-set signature also separates.

## Required Controls

- 1-WL, 2-WL, and 3-WL fingerprints from the same implementation.
- A fixed-size graph-level pooling baseline over the same input features.
- PairAttn removal or relation-loss removal to identify whether the diagnostic
  responds to the proposed reconstruction path.
- Training and evaluation graph-family split with all random seeds recorded.

## Interpretation Boundary

An empirical separation rate does not prove that IGSSE has a universal WL
power.  The paper may state the scoped capability claim: “after unlabeled
pairwise recovery training, IGSSE resolves the evaluated WL-collision pairs by
reconstructing and separating the two graphs.” This remains limited to the
tested graph family, attribute scheme, training procedure, and tolerance; it is
not a theorem that IGSSE dominates a WL hierarchy.
