# Resume / Job-Hunt Workspace

Personal workspace for a fast resume-tweak pipeline plus job-search notes.

## Layout

```
.
├── src/CV/        LaTeX entrypoints (one per role variant: SE/FA/PM/MLE/DE/PM)
├── src/DB/        Shared sections + style files (\input'd by entrypoints)
├── out/           Compiled PDFs to send out
├── build/         LaTeX intermediates (gitignored)
├── scripts/       Build helpers
├── assets/        Static assets (profile photo)
├── data/          Contact exports (Apollo, etc.)
├── notes/         Interview prep
│   ├── companies/ Per-company question banks
│   └── prompts/   LLM prompts (resume tailoring, BQ)
└── referral/      Referral mailer + tracking spreadsheets
```

## Build

The repo root `.latexmkrc` routes intermediates to `build/` and PDFs to `out/`.

### Via PowerShell

```powershell
.\scripts\build-resume.ps1
```

Builds every `*.tex` under `src/CV/`.

### Directly with latexmk

Use `-cd` so `\input{../DB/...}` resolves correctly:

```bash
latexmk -pdf -cd src/CV/JianFeng-2026-SE.tex
```

### Referral mailer

`referral/send_referral_emails.py` reads `referral/*.xlsx` and sends templated
emails via SMTP. Set `EMAIL_PASSWORD` in your environment first.
