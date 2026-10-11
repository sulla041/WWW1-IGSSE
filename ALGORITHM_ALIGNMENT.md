# Algorithm-to-Diagram Alignment

Reference source: the maintained algorithm diagram accompanying this manuscript.

The manuscript deliberately follows the diagram's computation order:

1. `X_i -> h_{o,i}`: `Enc_X` produces the original, edge-free coordinate.
2. `h_o -> Q/K/V`: the first FSDE layer projects the baseline; later layers
   project the preceding point state.
3. `q_s . a_src + k_i . a_dst -> e_si -> alpha_si`: source-query and
   target-key attention energy is normalized over incoming edges of target `i`.
4. `sum_s alpha_si v_s -> o_i`: the weighted value sum is the structural
   deviation coordinate.
5. `r_i = h_{o,i} + o_i -> FFN -> h_i`: the paper writes the general
   layer-wise residual, normalization, and FFN form of this diagram path.
6. `H = {h_1,...,h_n} -> PAIR ATTN -> REC`: PairAttn is the canonical relation
   reconstruction path; the pair MLP is an ablation parameterization.
7. `H -> Node-level / Graph-level / Auto-Regression`: the paper maps these to a
   point reader, invariant attention pooling, and set expansion followed by the
   same pair-attention decoder.
8. `H' = {h_1,...,h_n,h_{n+1}}`: set autoregression adds a point state before
   recovering the expanded graph. The legality/noise mechanisms are training or
   rollout configurations, not extra nodes in the core deterministic diagram.

The canonical paper names are `feature--structure deviation encoding`,
`PairAttn relation decoder`, `content decoder`, `attention pooling`, and `set
expansion`. Implementation names remain only in code documentation.
