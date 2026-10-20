#import "../../../template.typ": project

#project("Earnings Yield Factor | CRSP/Compustat", url: "https://github.com/faketut/course/tree/main/cfm301/projects/project2-factor")
- Built a point-in-time trailing E/P factor on CRSP/Compustat (*1.3M stock-months*, 2001–2024); the equal-weighted Q5–Q1 portfolio earned *18.7%/yr* (Sharpe 1.03, Newey–West t = 4.13).
- FF5 spanning leaves a *14.9%/yr alpha* (t = 5.11, R#super[2] = 0.50); value-weighting halves the premium to 9.5% (t = 1.80).
