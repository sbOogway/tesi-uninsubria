#import "locale.typ": *

#let titlepage(
  authors,
  date,
  title-font,
  language,
  logo-left,
  logo-right,
  many-authors,
  supervisor,
  title,
  type-of-thesis,
  university,
  university-location,
  at-university,
  date-format,
  show-confidentiality-statement,
  confidentiality-marker,
  university-short,
  page-grid,
  author,
  matricola
) = {
  // ---------- Page Setup ---------------------------------------

  set page(
    // identical to document
    margin: (top: 4cm, bottom: 3cm, left: 4cm, right: 3cm),
  )
  // The whole page in `title-font`, all elements centered
  set text(font: title-font, size: page-grid)
  set align(center)

  // ---------- Logo(s) ---------------------------------------

  if logo-left != none and logo-right == none {
    // one logo: centered
    place(
      top + center,
      dy: -3 * page-grid,
      box(logo-left, height: 110pt),
    )
  } else if logo-left != none and logo-right != none {
    // two logos: left & right
    place(
      top + left,
      dy: -4 * page-grid,
      box(logo-left, height: 3 * page-grid),
    )
    place(
      top + right,
      dy: -4 * page-grid,
      box(logo-right, height: 3 * page-grid),
    )
  }


  // ---------- Title ---------------------------------------

  v(14 * page-grid)


  set text(size: 20pt, weight: "semibold")
  place(
    center,
    dy: -7 * page-grid,
    "UNIVERSITÀ DEGLI STUDI DELL'INSUBRIA",
  )

  set text(size: 16pt, weight: "regular")
  place(
    center,
    dy: -4 * page-grid,
    "DIPARTIMENTO DI SCIENZE TEORICHE E APPLICATE",
  )

  set text(size: 16pt)
  place(
    center,
    dy: -2.5 * page-grid,
    "CORSO DI STUDIO TRIENNALE IN INFORMATICA - F004",
  )

  v(7 * page-grid)

  set text(size: 24pt, weight: "bold")
  place(
    center,
    dy: -1 * page-grid,
    "Sviluppo di un sistema embedded per il controllo della temperatura in camera di collaudo",
  )


  v(10 * page-grid)

  set text(size: 12pt, weight: "light")
  place(
    left,
    dy: 2 * page-grid,
    "Relatore:\nProf. Carlo Dossi",
  )

  place(
    right,
    dy: 2 * page-grid,
    text("Tesi di Laurea di:", weight: "bold") +
    text("\n" + author + " - " + matricola),
  )

  place(
    left,
    dy: 5 * page-grid,
    "Tutor Aziendale:\nEdoardo Scaglia",
  )

  place(
    right,
    dy: 5 * page-grid,
    "Azienda ospitante:\nAMEL SRL, Milano",
  )

  place(
    center,
    dy: 8 * page-grid,
    "Anno Accademico:\n2025/2026",
  )
}
