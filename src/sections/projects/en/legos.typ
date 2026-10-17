#import "../../../template.typ": project

#project("Legos | Rust HFT Trading System", url: "https://github.com/faketut/legos")
- Designed a compile-time-generic trading pipeline with interchangeable market feeds, message buses, order books, strategies, risk checks, and execution gateways.
- Implemented low-allocation market-data structures, backtest/testnet adapters, and measured 10M in-process ticks at 70 ns p99 latency, excluding network I/O.
