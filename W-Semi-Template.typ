#let project(title: "", author: "", school:"", location: "", subject:"", teacher:"", years: "", deadline: "", body) = {

    show bibliography: set heading(numbering: "I.1")

    set page(numbering: "1", number-align: center, header:[
      #align(center)[#set text(12pt)
                     #smallcaps(title)]])
    set text(font: "Linux Libertine", lang: "de")

    // Set paragraph spacing.
    show par: set block(above: 2em, below: 2em)

    set heading(numbering: "I.1")
    set par(leading: 1.5em)

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
                        #text(size: 12pt, weight: 400, [aus dem W-Seminar]) \
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
    block(height: 7%, width: 100%)[
        #align(right + bottom)[............................................................ \
                               Unterschrift des Kursleiters]]

    pagebreak()

    block(height: 100%)[
        #align(horizon)[ #outline() ]
    ]

    pagebreak()

    body

    pagebreak()

    bibliography("sources.yml", style: "ieee")

    pagebreak()
    align(center + horizon,[
        #text(weight: 700)[
        Ich erkläre hiermit, dass die Seminararbeit ohne fremde Hilfe angefertigt und nur die im Literaturverzeichnis aufgeführten Quellen und Hilfsmittel benutzt habe.]
        #grid(
            columns: (auto, auto, auto),
            rows: (auto, auto, auto),
            align(bottom + right)[#v(1em)............................................., den],
            align(bottom + left)[#v(1em).........................],
            align(bottom + center)[#h(0.5cm).....................................................],
            align(horizon + center)[#v(1.5em)Ort],
            align(horizon + center)[#v(1.5em)Datum],
            align(horizon + center)[#v(1.5em)#h(0.5cm)Unterschrift des Schülers]
        )]
    )
}
