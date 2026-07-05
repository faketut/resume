// ── Resume template ──────────────────────────────────────────────────────────
// Shared page layout, text defaults, heading styling, and layout helpers.
// Each resume assembler imports this and calls `resume-defaults()`.

// Apply standard resume page + text settings via a show rule.
#let resume-defaults(body) = {
  set page(paper: "us-letter", margin: (top: 0.2cm, bottom: 0.01cm, left: 0.5cm, right: 0.5cm))
  set text(font: "Charter", size: 9pt, fill: black)
  set par(leading: 0.55em, spacing: 0.40em)
  set list(indent: 0pt, body-indent: 4pt, spacing: 1pt)
  // Tight leading inside bullets (affects wrapped lines within a single item).
  show list: set par(leading: 0em)
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
  set page(paper: "us-letter", margin: (top: 0.2cm, bottom: 0.01cm, left: 0.5cm, right: 0.5cm))
  set text(font: ("Charter", "Noto Sans CJK SC"), size: 8pt, fill: black)
  set par(leading: 0.50em, spacing: 0.40em)
  set list(indent: 0pt, body-indent: 4pt, spacing: 2pt)

  // Tight leading inside bullets (affects wrapped lines within a single item).
  show list: set par(leading: 0.35em)

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
    par(leading: 0.30em)[*#title* \ #role],
    align(right, date),
  )
}

/// A: bold company / organisation name.
#let org(name) = [*#name*]

/// B: role row — role on left, year range on right.
/// end = ""  → "start –    " (4-char-wide blank placeholder, for ongoing roles)
/// end = start → single year
/// otherwise  → "start – end"
#let position(role, start, end) = {
  let date-label = if end == "" {
    [#start – #box(width: 2.2em)]
  } else if str(start) == str(end) {
    [#start]
  } else {
    [#start – #end]
  }
  grid(
    columns: (1fr, auto),
    gutter: 0pt,
    role,
    align(right, date-label),
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

/// Dynamically fit header + sections onto one page.
/// Measures both blocks, then places (slack / 2) of vertical whitespace above
/// the header so content is vertically centred; when the page is full the
/// padding collapses to zero and nothing overflows.
#let fit-resume(header-content, sections-content) = layout(size => context {
  let hh = measure(header-content).height
  let sh = measure(sections-content).height
  let top-pad = calc.max(0pt, (size.height - hh - sh) / 2)
  v(top-pad)
  header-content
  sections-content
})

/// Section gap — use between entries within a section.
#let gap() = v(2pt)

/// Section break — use between sections.
#let section-break() = v(4pt)

/// Tight-leading block — for dense inline lists (e.g. cert dumps).
#let tight(body, leading: 0.3em) = block(par(leading: leading, body))
