// ── Resume template ──────────────────────────────────────────────────────────
// Shared page layout, text defaults, heading styling, and layout helpers.
// Each resume assembler imports this and calls `resume-defaults()`.

// Apply standard resume page + text settings via a show rule.
#let resume-defaults(body) = {
  set page(paper: "us-letter", margin: (top: 0.2cm, bottom: 0.01cm, left: 0.8cm, right: 0.8cm))
  set text(font: "Charter", size: 9pt, fill: black)
  set par(leading: 0.30em, spacing: 0.30em)
  set list(indent: 0pt, body-indent: 7pt, spacing: 0pt)

  show heading.where(level: 1): it => block(width: 100%, above: 0.05cm, below: 0pt)[
    #set text(size: 11pt, weight: "bold")
    #upper(it.body)
    #v(-10pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]

  body
}

// Chinese variant — smaller text, Noto Sans CJK for CJK glyphs.
#let resume-defaults-cn(body) = {
  set page(paper: "us-letter", margin: (top: 0.2cm, bottom: 0.01cm, left: 0.8cm, right: 0.8cm))
  set text(font: ("Charter", "Noto Sans CJK SC"), size: 8pt, fill: black)
  set par(leading: 0.28em, spacing: 0.28em)
  set list(indent: 0pt, body-indent: 7pt, spacing: 0pt)

  show heading.where(level: 1): it => block(width: 100%, above: 0.05cm, below: 0pt)[
    #set text(size: 10pt, weight: "bold")
    #upper(it.body)
    #v(-10pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]

  body
}

// ── Layout helpers ───────────────────────────────────────────────────────────

/// Two-column entry: left content, right-aligned date.
#let entry(title, role, date) = {
  grid(
    columns: (1fr, auto),
    gutter: 0pt,
    [*#title* \ #role],
    align(right, date),
  )
}

/// Project entry with optional URL.
#let project(name, date: "", url: "") = {
  let label = if url != "" { [#link(url)[*#name*]] } else { [*#name*] }
  grid(
    columns: (1fr, auto),
    gutter: 0pt,
    label,
    align(right, date),
  )
}

/// Section gap — use between entries within a section.
#let gap() = v(1pt)

/// Section break — use between sections.
#let section-break() = v(1pt)
