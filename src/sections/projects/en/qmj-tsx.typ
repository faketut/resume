#import "../../../template.typ": project

#project("QMJ on TSX Small-Caps | Python", url: "https://github.com/faketut/qmj-tsx")
- Reproduced the QMJ-Canada factor and tested a price-derived quality proxy on 109 TSX small caps where free-source fundamentals were sparse.
- Built a reproducible Parquet pipeline with Newey–West regressions and robustness checks; the proxy showed near-zero factor return and no correlation with the benchmark.
