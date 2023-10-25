#let project(title: "", author: "", school:"", location: "", subject:"", teacher:"", years: "", deadline: "", body) = {

    set page(numbering: "1", number-align: center, header:[
      #align(center)[#set text(12pt)
                     #smallcaps(title)]])
    set text(font: "Linux Libertine", lang: "de")

    // Set paragraph spacing.
    show par: set block(above: 1.5em, below: 1.5em)

    set heading(numbering: "I.1")
    set par(leading: 0.75em)

    // Main body.
    set par(justify: true)

    set page(
        paper: "a4",
        margin: (y: 3cm))

    grid(
        columns: (50%, 50%),
        align(left + horizon)[#school \ #location],
        align(right + horizon)[Abiturjahrgang #years]
    )
    align(center)[#block(height: 20%, text(weight: 500, 1.75em, [
        #align(horizon)[SEMINARARBEIT \
                        #text(size: 11pt, weight: 400, [aus dem W-Seminar]) \
                        #subject]]))]

    block(height: 5%)

    align(center)[Thema der Seminararbeit: \
                   #text(weight: 700, 1.75em)[#title]]

    block(height: 10%)

    block(height: 20%)[
        #align(horizon)[
            #grid(
                columns: (30%, 70%),
                align(left + horizon)[Verfasser: \ Kursleiter: \ Abgabetermin:],
                align(left + horizon)[#author \ #teacher \ #deadline]
            )
        ]
    ]

    grid(
        columns: (40%, 20%, auto),
        rows: (2%, 2%),
        align(left)[Bewertung der schriftlichen Arbeit:],
        align(left)[.......... Punkte],
        align(left)[in Worten: ..............................],
        align(left)[Bewertung der Präsentation:],
        align(left)[.......... Punkte],
        align(left)[in Worten: ..............................],
    )
    grid(
        columns: (60%, auto),
        rows: (2%, 2%),
        align(left)[Gesamtbewerbung ((3x schriftlich + 1x mündlich) : 2):],
        align(left)[.......... Punkte],
        align(left)[Abgabe beim Oberstufenkoordiantor am:],
        align(left)[..............................]
    )
    block(height: 13%, width: 100%)[
        #align(right + bottom)[............................................................ \
                               Unterschrift des Kursleiters]]

    pagebreak()

    block(height: 100%)[
        #align(horizon)[ #outline() ]
    ]

    pagebreak()

    body
}
