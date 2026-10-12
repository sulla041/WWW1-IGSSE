# WWW Graph Paper Style Notes

Reference PDFs in `style-references/www-papers/`:

- `WWW2024_HetGPT.pdf`: HetGPT, WWW 2024.
  Source: https://lucyinstitute.nd.edu/wp-content/uploads/2025/02/3589334.3645685.pdf
- `WWW2024_ROSEN.pdf`: Graph Contrastive Learning Reimagined, WWW 2024.
  Source: https://yangliang.github.io/pdf/www24-zhuo.pdf
- `WWW2023_SE-GSL.pdf`: SE-GSL, WWW 2023.
  Source: https://www.atailab.cn/seminar2023Spring/pdf/2023_WWW_SE-GSL%20A%20General%20and%20Effective%20Graph%20Structure%20Learning%20Framework%20through%20Structural%20Entropy%20Optimization.pdf

Observed abstract pattern:

1. Start from Web scale graph relevance and concrete applications.
2. Name the prevailing graph learning paradigm and describe how it works.
3. State the limitation of prior methods directly, usually with "However".
4. Introduce the method with "We propose" and then compress the mechanism with
   "Specifically".
5. End with dataset/task coverage and a concise empirical claim.

Applied to IGSSE:

- The abstract now opens with graphs as a natural Web representation.
- GNNs are described as message passing over observed edges with stacked
  neighborhood aggregation.
- The gap is stated through oversmoothing, WL expressivity limits, and
  structural compression.
- IGSSE is presented as a recoverable set space embedding with content computed
  without edges, structural deviations conditioned on relations, pair attention recovery, and
  set expansion.
- The empirical close reports aligned prediction, WL collision diagnostics under
  the stated recovery criteria, and constrained autoregressive growth.
