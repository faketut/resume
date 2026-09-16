# Resume

Typst resumes styled after [jakegut/resume](https://github.com/jakegut/resume)
(MIT) — small-caps headings with a full-width rule, and pipe-separated contact
line.

- `src/template.typ` — layout: type scale, entry helpers, section headings.
- `src/header.typ` / `src/header.cn.typ` — English and Chinese contact headers.
- `src/sections/` — reusable content blocks, shared across every resume.
- `src/resume/<resume_name>.typ` — one assembler per target role.

## Content helpers

```typst
// Two-line entry: bold organisation + right-aligned location, then italic role
// + right-aligned italic date. An empty role collapses it to a single row
// (bold title + date), which is what awards and activities use.
#subheading("Manulife Financial Corporation", "Co-op", "05/2026 – 08/2026",
            location: "Toronto, ON")

// One-line project entry: bold name (optionally linked) + right-aligned date.
#project("MiniKV", date: "", url: "https://github.com/faketut/MiniKV")

// Skills: one `Category: items` row per line. Items are content, so `C\#`
// and `A\&B` work unescaped by strings.
#skills((
  ("Languages", [Python, SQL, C\#, C++]),
  ("Databases", [PostgreSQL, MySQL, Redis]),
))
```

## Building

```sh
# Render a resume (writes the PDF next to the .typ when no output path is given).
typst compile --root . src/resume/JianFeng-2026-SE.typ src/resume/JianFeng-2026-SE.pdf

# Referral request helper.
python referral/ask_referral.py "<job_title>" "<company_name>" "<job_post_url>"
```

Tuning density: `scale` at the top of `src/template.typ` multiplies the whole em
grid. `scale: 1` reproduces the reference LaTeX metrics; the value in the repo
keeps every resume on a single page.
