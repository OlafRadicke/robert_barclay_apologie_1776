
Für Beitragende
===============

Quellen
-------

* [OCR and scan picures on google.de/books ](https://www.google.de/books/edition/Robert_Barclay_s_Apologie_oder_Vertheidi/hb5jAAAAcAAJ?hl=de&gbpv=0&kptab=overview)
* [About the author (R. Barclay)](https://de.wikipedia.org/wiki/Robert_Barclay_(Qu%C3%A4ker))

Formatierung
------------

Zur leichteren orientierung und vergleich zum originaltext, wird wie folgt verfahren.

Die **Kapitel** und **Paragraphen** werden wie hier im Beispiel formatiert:

```markdown
<!-- Seite 45 , content-0062.xml -->
DER 2. SATZ *Von der innerlichen und unmittelbaren Offenbarung.*
================================================================

Zusammenfassung
---------------

Weil niemand den Vater Kennet, denn nur der
```

Jeder **Paragraph** bekommt eine Eigene Textdatei. Alle **Kapitel** bekommen
ein eigenes Unterverzeichnis. Alle Makedown-Dateien des Buches ligen in
gleichen (Unter-)Verzeichnis, um das Generieren des eBooks zu vereinfachen.

Die **Römischen Zahlen** werden beibehalten um die Orientierung/Verglei des
Originals zu erleichtern. Beispiel:

```markdown
Paragraph I.
------------
```

Im Maktdown werden die **Zeilenlänge** des Originals beibehalten.

**Wortumbrüchen** werden entfernt, in dem der zweite Teil des wortes, in der Zeile
des ersten Teils verbunden wird.

Die **Seitenwechsel** des Originals werden als HTML-Kommentar
im Makrdown vermerkt. Die Quelle-Datei der OCR-Quell-Datei wird ebenfalls als
HTML-Kommentar vermerkt. Z.B. so:

```markdown
wie viel mehr liegt uns ob, solches in geistlichen und
himmlischen nicht zu unterlassen? Bei dieser wichtigen
Sache sollten wir eine desto fleißigere Untersuchung anstellen<!-- Seite 42 -->
Weil derjenige, welcher alsbald bei dem Eingang
irrt,nicht so leichtlich wieder auf den rechten Weg
```

**Fußnoten** werden an das Ende einer Date geschrieben und mit einem
Kommentar als solche gekennzeichnet. Die Bezeichner der Fußnoten sind so
aufgebaut, das darin Kapitel und Paragraph kodiert sind
`b_<Kabitel>_<Paragraph>_<Fußnoten-Nummer>` also z.B.:

```markdown
<!-- fussnoten -->

[^b_01_01_01]: Joh. 17,3 "Dies aber ist das ewige Leben, daß sie dich, den allein wahren Gott, und den du gesandt hast, Jesus Christus, erkennen."
```

Die **Randnotizen** werden grundsätzlich weggelassen. In der Erstausgabe aus
dem 17. Jahundert sind diese Randnotizen noch nicht enthalten. Handelt es bei
den Randnotizen um Bibelstellen, werden diese als Fußnoten beibehalten.

**Zitate in Griechischer Schrift** werden nicht übertragen sondern mit `XXX`
gekennzeichnet und mit Fußnote versehen. Wenn später ein Mitarbeiter mit
Griechisch-Kenntnissen die Stellen lesen und übertragen kann, wird das noch
ergänzt. In der Regel kann nicht davon ausgegangen werden, das der Leser
Griechisch-Kenntnissen hat. Von dem Zitate in Griechischer Schrift wird
ein Screenshoot gemacht und in Verzeichnis */pics* abgelegt, unter den namen
der Fußnote, mit der die Stelle dokumentiert ist. Z.B. *pics/footnote-b_02_02_12.png*.


Scripts
-------

PDF erstellen:

```bash
$ ./scripts/create_pdf
```

ePub (eBook) erstellen:

```bash
$ ./scripts/create_ebook
```

Clean-up-Skript:

```bash
$ ./scripts/cleanup
```

Hilfreiche Tools
----------------

#### Unter Linux ####

- cal ihre (eBook-Reader)
- sigil (WYSIWYG eBook-Editor)
- [com.github.johnfactotum.Foliate](https://github.com/johnfactotum/foliate)


Bearbeitungsstände
------------------

| Kapitel | OCR-Übertragung | Formatierung | 1. Rechtschreibkorrektur | 2. Recht.korr. |
|---------|-----------------|--------------|--------------------------|----------------|
| Vorwort | :x:             | :x:          | :x:                      | :x:            |
| 1       | :+1:            | :x:          | :x:                      | :x:            |
| 2       | :+1:            | :x:          | :x:                      | :x:            |
| 3       | :+1:            | :X:          | :x:                      | :x:            |
| 4       | :+1:            | :X:          | :x:                      | :x:            |
| 5       | :+1:            | :x:          | :x:                      | :x:            |
| 6       | :+1:            | :x:          | :x:                      | :x:            |
| 7       | :+1:            | :x:          | :x:                      | :x:            |
| 8       | :+1:            | :x:          | :x:                      | :x:            |
| 9       | :+1:            | :x:          | :x:                      | :x:            |
| 10      | :+1:            | :x:          | :x:                      | :x:            |
| 11      | :+1:            | :x:          | :x:                      | :x:            |
| 12      | :+1:            | :x:          | :x:                      | :x:            |
| 13      | :+1:            | :x:          | :x:                      | :x:            |
| 14      | :+1:            | :x:          | :x:                      | :x:            |
| 15      | :+1:            | :x:          | :x:                      | :x:            |


TODOs
-----

- Cover-Gestaltung
- CD/CD für die Erstellung des ePubs als *Nightly Build*
- Vorwort zu Ausgabe erstellen mit den Inhalten:
  - Über die Entstehungsgeschichte dieser Ausgabe und ihrer Autoren
  - Über den Autor des Werks
  - Über die Geschichte des Werks, seine Bedeutung und Wirkung
- Vermarktung Über den Buchhandel