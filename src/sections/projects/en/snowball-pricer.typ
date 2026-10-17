#import "../../../template.typ": project

#project("Snowball Pricer | Basket Autocallable Options", url: "https://github.com/faketut/snowball-pricer")
- Built a market-data-to-pricing pipeline for basket autocallables: option-chain feeds, SSVI implied-volatility surfaces, and Dupire local-volatility Monte Carlo pricing with Greeks.
- Defined an error budget for Monte Carlo sampling, stale market data, and model-to-dealer pricing differences; yfinance is delayed by default, with Questrade L1 as an optional real-time feed.
