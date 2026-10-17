#import "../template.typ": resume-defaults, gap, skills, subheading, project

#show: resume-defaults

#include "../header.typ"

= Education
#include "../sections/common/edu.typ"

= Skills
#skills((
  ("Markets & Research", [Equity research, company/industry due diligence, financial statement analysis, valuation, DCF, IRR/MOIC]),
  ("Market Coursework", [Fixed income, derivatives, global markets]),
  ("Tools", [Advanced Excel, VBA/macros, Bloomberg Terminal, Python, R, SQL, Power BI])
))
= Experience
#subheading("Manulife Financial Corporation", "Software Engineer", "May 2026 – Aug 2026", "Toronto, ON, Canada")
- Improved operational reliability for an internal financial-services platform used by thousands of developers; automated *1K+ daily cross-system operations* with a *99% success rate* using request pre-validation and failure handling, surfacing rare edge cases for follow-up.
- Secured platform integrations by replacing plaintext credentials with *GitHub App token exchange* and team-scoped permissions; integrated live AKS and certificate checks into a Foundry agent to flag GitOps deployment mismatches.
#gap()
#subheading("Treasury Board Secretariat", "Software Developer", "Sep 2025 – Dec 2025", "Toronto, ON, Canada")
- Improved data quality in a *5K-firm public dataset* by automating duplicate and invalid job-title cleanup, reducing manual processing time *85%* and enabling peer-group and governance analysis.
- Optimized analyst reporting queries to cut load time *30%*; migrated *30 tests across five suites* to Katalon, adopted by *two QA teams* after a demo.
#gap()
#subheading("GuangDong Tiptop Asset Management Co., Ltd", "Analyst", "Jan 2025 – Apr 2025", "China")
- Screened *100–300+ companies* from sourcing lists, databases, reports, and founder pitch decks; advanced *20–50* to initial business-model reviews, founder calls, and project profiles.
- Supported deep diligence on *3–8 companies* and *1–3 IC-stage opportunities*, analyzing industry/competitive landscape, cohort and retention data, and three-to-five-year DCF/IRR/MOIC scenarios; contributed to IC materials and sell/hold recommendations, including a retained-stake proposal.
#gap()
#subheading("Lansi Institute of Artificial Intelligence in Medicine", "Data Analyst", "May 2024 – Dec 2024", "Remote")
- Built a reproducible analysis pipeline for *~100GB of multi-omics data*, cutting preprocessing time *89%, from days to hours*, for an international research collaboration.
- Applied XGBoost and SMR/MR#super[2] across a *68-study meta-analysis* to screen evidence and narrow candidate drug targets for published research.

= Projects
#project("Snowball Pricer | Basket Autocallable Options", url: "https://github.com/faketut/snowball-pricer")
- Built a market-data-to-pricing pipeline for basket autocallables: option-chain feeds → SSVI implied-volatility surface → Dupire local-vol Monte Carlo pricing and Greeks.
- Defined a model error budget for sampling, stale market data, and model-vs-dealer pricing differences; default yfinance feed is delayed, with Questrade L1 as an optional real-time feed.
#gap()
#project("Self-Directed Stocks & ETFs | moomoo, Wealthsimple")
- During ~1 year of active trading in 2025, broker-displayed account returns were *+30% paper* (moomoo) and *+25% live* (Wealthsimple), calculated as (ending value − initial value) / initial value.
- Returns are account-level and not benchmark-adjusted; positions informed by Morningstar research and major news.

= Achievements
- 3rd of *45 teams* (School of Accounting and Finance students), SAF Investment Research Challenge; finalist, 7th Annual SAF Strategy Case Competition; WorldQuant Brain Gold Level (*20 quality alphas; Research Consultant candidate*).
- Grew UX Research Hub *32× (10→318 members)*; built a budget tracker that cut planning time *40%* for a six-person team and allocated seed funding to three on-time projects.
