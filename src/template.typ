// ── Resume template — Jake Gutierrez style ───────────────────────────────────
// Typst port of https://github.com/jakegut/resume (MIT), itself based on
// https://github.com/sb2nov/resume.
//
// The LaTeX original is an 11pt article on letter paper with 0.5in margins and
// no vertical justification:
//
//   \Huge\textbf{\scshape Name}   → resume-header()   name + contact row
//   \large\scshape section        → heading show rule small caps + rule
//   \resumeSubheading{a}{b}{c}{d} → subheading()      company/up-right row,
//                                                     then down-left/down-right row
//   \resumeProjectHeading         → project()         bold name + down-right
//   \resumeItem                   → bullet list items
//   \textbf{Languages}{: ...}     → skills()          Category: items rows
//
// Every size and gap below is measured off the LaTeX output so the Typst render
// lands on the same grid, then multiplied by `scale`. Typst's line box here is
// 0.684em tall, hence `body-pitch - 0.684em` reproduces LaTeX's \baselineskip.

// Page box — paper-tight top and bottom, 0.5in side margins.
#let page-margin = (top: 0.2cm, bottom: 0.01cm, left: 0.5cm, right: 0.5cm)

// Jake's resume carries about half the content these do, so the em grid is
// scaled to keep every resume on one page. `scale: 1` reproduces the LaTeX
// metrics exactly — on these resumes that runs to a second page.
#let scale = 0.83

#let pt(n) = n * 1pt * scale

// ── Type scale ───────────────────────────────────────────────────────────────
#let text-font = "Libertinus Serif"
#let body-size = pt(12)     // \small — bullets, down-left rows, skills, contact
#let body-pitch = pt(12)    // \baselineskip of \small text
#let entry-size = pt(11)    // \normalsize — bold company row of an entry
#let heading-size = pt(12)  // \large — section headings
#let name-size = pt(24)     // \Huge \scshape

// ── Layout ───────────────────────────────────────────────────────────────────
#let entry-indent = 0.15in * scale        // \resumeSubHeadingList leftmargin
#let bullet-indent = 0.05in * scale       // entry indent + itemize label offset
#let bullet-body-indent = 0.13in * scale  // gap between bullet and text
#let bullet-gap = pt(7.1)                 // between two bullets
#let list-above = pt(6.9)                 // entry → its bullets (itemize \topsep)
#let entry-gap = pt(5.7)                  // last bullet of an entry → next entry
#let heading-above = pt(16.2)             // body text → section heading
#let heading-below = pt(6.1)              // section rule → first entry
#let title-rule-gap = pt(4.35)            // heading line box → section rule
#let down-left-row-gap = pt(1.74)              // bold name row → italic down-left row
#let name-contact-gap = pt(3.9)           // name line box → contact row
#let rule-stroke = 0.4pt                  // \titlerule, unscaled

#let resume-defaults(font: text-font, body) = {
  set page(paper: "us-letter", margin: page-margin, fill: white)
  set text(font: font, size: body-size, fill: black, hyphenate: false)
  set par(justify: false, leading: body-pitch - 0.684em, spacing: body-pitch - 0.684em)

  set list(
    marker: [•],
    indent: bullet-indent,
    body-indent: bullet-body-indent,
    spacing: bullet-gap,
  )
  // Bullets close their entry visually: LaTeX gives the itemize list extra
  // space above while the entry heading itself contributes none.
  show list: it => block(above: list-above, it)

  // \hypersetup{hidelinks}
  show link: set text(fill: black)

  show heading.where(level: 1): it => block(
    width: 100%,
    above: heading-above,
    below: heading-below,
    height: 0.684 * heading-size + title-rule-gap,
  )[
    #place(top + left, text(size: heading-size, smallcaps(it.body)))
    #place(bottom + left, line(length: 100%, stroke: rule-stroke + black))
  ]

  body
}

/// Chinese variant — same grid, CJK glyphs fall back to Noto Serif SC.
#let resume-defaults-cn = resume-defaults.with(font: (text-font, "Noto Serif SC"))

// ── Header ───────────────────────────────────────────────────────────────────

/// Centred name with a pipe-separated, underlined contact row under it.
#let resume-header(name, contacts) = align(center)[
  #text(size: name-size, weight: "bold", smallcaps(name))
  #v(name-contact-gap)
  #text(size: body-size, contacts.map(underline).join([#h(4pt)|#h(4pt)]))
]

// ── Entries ──────────────────────────────────────────────────────────────────

/// Entry heading: bold organisation and right-aligned up-right on the first
/// row, then an italic down-left and right-aligned italic down-right on the second — as
/// in `\resumeSubheading`, whose two rows are the bold/plain pair followed by
/// the all-italic pair. A down-left-less entry (an award or activity) collapses to a
/// single row instead: bold title with the down-right right-aligned.
#let subheading(up-left, down-left, down-right, up-right) = pad(left: entry-indent)[
  #if down-left == "" {
    grid(
      columns: (1fr, auto),
      column-gutter: 1em,
      text(up-left, size: entry-size, weight: "bold"),
      align(right, text(down-right, size: body-size)),
    )
  } else {
    grid(
      columns: (1fr, auto),
      column-gutter: 1em,
      text(up-left, size: entry-size, weight: "bold"),
      align(right, text(up-right, size: entry-size)),
    )
    v(down-left-row-gap)
    grid(
      columns: (1fr, auto),
      column-gutter: 1em,
      text(down-left, size: body-size, style: "italic"),
      align(right, text(down-right, size: body-size, style: "italic")),
    )
  }
]

/// Project heading, following \resumeProjectHeading: bold name, optionally
/// linked, with the down-right right-aligned on a single row.
#let project(name, down-right: "", url: "") = pad(left: entry-indent)[
  #grid(
    columns: (1fr, auto),
    column-gutter: 1em,
    if url != "" { link(url, text(name, weight: "bold")) } else { text(name, weight: "bold") },
    align(right, down-right),
  )
]

// ── Skills ───────────────────────────────────────────────────────────────────

/// One `Category: items` row. A named helper rather than an inline closure —
/// Typst parses `[...]` in a closure-body argument position as a content
/// argument, which leaves the closure's parameters unbound.
#let _skillRow(row) = [*#row.at(0)*: #row.at(1)]

/// Technical-skills block in a two-column key-value format.
/// Category on the left (narrower column), items on the right (takes remaining space).
#let skills(rows) = block(
	inset: (left: 1.5em),
	grid(
  columns: (auto, 1fr),
  column-gutter: 1em,
  row-gutter: 0.5em,
  ..rows.map(((category, items)) => (
    [*#category:*],
    items
  )).flatten()
  )
)
// ── Spacing helpers ──────────────────────────────────────────────────────────

/// Gap between two entries of the same section.
#let gap() = v(entry-gap)
