# Resume / CV workspace

## Layout

- `src/`: LaTeX sources
  - `src/CV/`: entrypoint `.tex` files (SE/FA/PM + CN variants with ASCII filenames)
  - `src/DB/`: shared sections + style files
- `out/`: compiled PDFs you send out
- `build/`: LaTeX intermediate files (aux/log/synctex, etc.)

## Build (from repo root)

This repo includes a `.latexmkrc` that sends:

- PDFs to `resume/out/`
- intermediate files to `resume/build/`

### Build via PowerShell

```powershell
.\scripts\build-resume.ps1 -Target ALL
```

Or build one variant:

```powershell
.\scripts\build-resume.ps1 -Target SE
```

### Build directly with latexmk

Example (use `-cd` so `\input{../DB/...}` resolves correctly):

```bash
latexmk -pdf -cd resume/src/CV/JianFeng-2026-SE.tex
```

### Clean build artifacts

```powershell
.\scripts\clean-resume.ps1
```

