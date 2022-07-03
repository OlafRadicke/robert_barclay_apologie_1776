
Für Beitragende
---------------

### Quellen ###

* [OCR and scan picures on google.de/books ](https://www.google.de/books/edition/Robert_Barclay_s_Apologie_oder_Vertheidi/hb5jAAAAcAAJ?hl=de&gbpv=0&kptab=overview)
* [About the author (R. Barclay)](https://de.wikipedia.org/wiki/Robert_Barclay_(Qu%C3%A4ker))

### Formatierung ###

Der Text wurde/wird mit Markdown gesetzt. Im Maktdown werden die Zeilenlänge des 
Originals beibehalten, um so Textstellen Leichter mit den Scanns des originals
vergleichen zu können. Die Seitenwechsel des Originals werden als HTML-Kommentar
im Makrdown vermerkt. Die Quelle-Datei der OCR-Quell-Datei wird ebenfalls als
HTML-Kommentar vermerkt.

Jeder Paragraph bekommt eine Eigene Textdatei. Alle Makedown-Dateien ligen in 
gleichen (Unter-)Verzeichnis, um das Generieren des eBooks zu vereinfachen.

### Scripts ###

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


Bearbeitungsstände
------------------

| Kapitel | OCR-Übertragung | Formatierung | 1. Rechtschreibkorrektur | 2. Rechtschreibkorrektur | 
|---------|-----------------|--------------|--------------------------|--------------------------|
| Vorwort | :+1:            | :+1:         | :x:                      | :x:                      |
| 1       | :+1:            | :x:          | :x:                      | :x:                      |
| 2       | :+1:            | :x:          | :x:                      | :x:                      |
| 3       | :+1:            | :X:          | :x:                      | :x:                      |
| 4       | :+1:            | :X:          | :x:                      | :x:                      |
| 5       | :+1:            | :x:          | :x:                      | :x:                      |
| 6       | :+1:            | :x:          | :x:                      | :x:                      |
| 7       | :+1:            | :x:          | :x:                      | :x:                      |
| 8       | :+1:            | :x:          | :x:                      | :x:                      |
| 9       | :+1:            | :x:          | :x:                      | :x:                      |
| 10      | :+1:            | :x:          | :x:                      | :x:                      |
| 11      | :+1:            | :x:          | :x:                      | :x:                      |
| 12      | :+1:            | :x:          | :x:                      | :x:                      |
| 13      | :+1:            | :x:          | :x:                      | :x:                      |
| 14      | :+1:            | :x:          | :x:                      | :x:                      |
| 15      | :+1:            | :x:          | :x:                      | :x:                      |


TODOs
-----

- Susammenfassungen in die Kapitel übertragen und löschen
  Fertige übertragungen 1,2,3,4,5