Metadaten
=========


In den Metainformationen der Markdownfiles steht verschiedene Informationen des
Dokuments vermerkt. Beispiel:

```markdown

---
title: '2.2'
description: ""
weight: 2
Bearbeitungsstand: "1.Durchsicht"
Schlagworte: {}
---
```

title
-----

Der text der als überschrift des Dokuments verwendet werden soll.


description
-----------

Wird nicht verwendet.


weight
------

Dient dazu die Reihenfolge der Dokumente zu bestimmen.


Bearbeitungsstände
------------------

Der Bezeichner "Bearbeitungsstand:" sollte einer der folgenden Werte haben.

| Wert          | Kommentar |
| rohdaten      | Die unveränderten Daten, so wie die Texterkennung es erfasst hat |
| 1.durchsicht  | Erste Sichtung. Mindestens die korrektur der Formatierung |
| 2.durchsicht  | Rechtschreibkorrektur und Glättungen |
| ...durchsicht | Ggf. weitere Durchsicht-Stadien |
| final         | Text ist fertig |


Schlagworte
-----------

Beliebige Anzahl von Schlagworten als List, die das jeweilige Dokument betreffen.
Wird von Hugo auf auf der Startseite als Index generiert.