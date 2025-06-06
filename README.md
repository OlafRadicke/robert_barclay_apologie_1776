Apologie von Robert Barclay in der Übersetzung von 1776
=======================================================


- [Apologie von Robert Barclay in der Übersetzung von 1776](#apologie-von-robert-barclay-in-der-übersetzung-von-1776)
  - [Über dieses Projekt](#über-dieses-projekt)
    - [Grundsätze und Konzepte der Edition](#grundsätze-und-konzepte-der-edition)
  - [Entwicklungsumgebung vorbereiten](#entwicklungsumgebung-vorbereiten)
  - [Online version per GitHub pages](#online-version-per-github-pages)
  - [Lokale Vorschau](#lokale-vorschau)
  - [CI/CD](#cicd)
  - [Lizenz](#lizenz)
  - [Für Beitragende](#für-beitragende)


Über dieses Projekt
-------------------

![pics/barclay.png](pics/barclay.png)

Der Text basiert auf die Digitalisierung von Google und der OCR von Google.
Der Eingescannte Text ist eine übersetzung von 1776. Es gibt noch eine ältere
übersetzung von 1684. Diese von 1776 scheint mir aber die besser
verständlichere.

Der aktuelle Stand wird immer mal wieder auf die Seite [https://apologie.the-independent-friend.de/](https://apologie.the-independent-friend.de/) synchronisiert.



### Grundsätze und Konzepte der Edition ###

* Der Text wurde/wird behutsam in der Rechtschreibung soweit angepasst,
  wie sie der Lesbarkeit dient.
* (Heute) Ungebräuchliche bzw. unverständliche Wörter werden ersetzt.
* Die Bibelstellen, auf die verwiesen werden, werden in Fussnoten ergänzt, um
  den Lesefluss zu unterstützen.
* Bei den Bibel-Zitaten wird keine Übersetzung bevorzugt. Sie sollte nur
  frei zugänglich sein und frei verwendet werden können. Dazu zählt die
  [Elberfelder Bibel von 1932](https://www.bibelkommentare.de/bibel/elb_1932)
* Die Ausgabe von 1776 hat sehr viele Randbemerkungen
  die die Ausgabe von 1684 nicht hat. Diese sind in aller Regel aber nur
  Zusammenfassungen der Kernaussagen des eigentlichen Textes. Bieten
  deshalb keinen substanziellen Mehrwert und werden deshalb hier auch nicht
  übernommen.
* Das Kapitel mit der Zusammenfassung des Buches wurde entfernt, da es
  weitestgehend nur eine Dublette der Zusammenfassungen in den jeweiligen
  Kapiteln war.
* Die doppele Kapitelüberschrift für den 5. und 6. Satz wurde entfernt
  da der Sinn sich nicht erschloss.

Entwicklungsumgebung vorbereiten
--------------------------------

```bash
git clone git@github.com:OlafRadicke/robert_barclay_apologie_1776.git
cd /robert_barclay_apologie_1776
git submodule update --init --recursive --remote
```

Online version per GitHub pages
-------------------------------

Zum erstellen GitHub page müssen drei Dinge beachtet werden:

- GutHub pages muss eingeschaltet sein [siehe DOKU](https://docs.github.com/en/pages/getting-started-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site)
- Der statische HTML-Code mus im dem richtigen Verzeichne abgelegt werden (in meinem Fall ***/docs***)
- Bei dem generieren des HTML-Codes muss HUGO mitgeteilt werden, unter welcher URL der Code gehostet wird. In meinem Fall [https://olafradicke.github.io/robert_barclay_apologie_1776/](https://olafradicke.github.io/robert_barclay_apologie_1776/). Wenn du dieses Repo clones, wird sich die URL aber ändern!

Um die letzten beiden Bedingungen zu erfüllen muss der Hugo-Aufruf wie folgt lauten:

```bash
hugo \
  --source ./hugo \
  --baseURL  https://olafradicke.github.io/robert_barclay_apologie_1776/ \
  --destination ../docs
```

Lokale Vorschau
---------------

Für eine Vorschau, kann der eingebaute Webserver verwendet werden: In dem man

```bash
$ hugo \
    --source ./hugo \
    --destination ../docs \
    server
```

aufruft. Danach kannst du die URL http://localhost:1313/ in deinem Browser aufrufen um die Vorschau zu sehen.

CI/CD
-----

Github action baut den statischen HTLM code automatisch nach einem
commit. Siehe [.github/workflows/build_html.yml](.github/workflows/build_html.yml)


Lizenz
------

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">
<img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" />
</a>
<br />
This work is licensed under a
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">
Creative Commons Attribution-ShareAlike 4.0 International License
</a>.

Siehe [LICENSE](LICENSE)

Für Beitragende
---------------

Siehe: [CONTRIBUTING](CONTRIBUTING/_index.md)
und: [TODO.md](TODO.md)