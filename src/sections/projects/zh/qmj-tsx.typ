#import "../../../../template.typ": project

#project("qmj-tsx", url: "https://github.com/faketut/qmj-tsx")
- 在 TSX 小盘股上复制 Asness QMJ 质量因子；通过 Parquet 数据管道用衍生价格质量指标填补稀疏基本面数据缺口。
- 多源数据流入（yfinance、AQR、Ken French）驱动 Newey-West 回归和分行业×权重×子时期鲁棒性扫描。
