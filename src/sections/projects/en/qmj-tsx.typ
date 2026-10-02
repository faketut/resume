#import "../../../template.typ": project

#project("qmj-tsx", url: "https://github.com/faketut/qmj-tsx")
- Reproduced Asness's Quality Minus Junk factor for TSX small caps; built a price-derived quality proxy to address sparse fundamental data and persisted the pipeline in Parquet.
- Combined yfinance, AQR, and Ken French data to run Newey-West regressions and robustness checks across sectors, weighting schemes, and subperiods.
