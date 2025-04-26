BEARBEITUNGSSTAND
-----------------

Um auf den ersten Blick sehen zu können, welchen Bearbeitungsstand eine Seite hat, wird ein Hinweis-Block gesetzt:

```
{{< panel status="warning" title="Bearbeitungsstand" >}}Status:Rohdaten.

Text wurde noch nicht gesichtet und korreliert.{{< /panel >}}
```


```
{{< panel status="notice" title="Bearbeitungsstand" >}}Status:1.Durchsicht.

Text wurde noch nicht gesichtet, Formatierung gesetzt und erste Korrekturen gemacht.{{< /panel >}}
```

```
{{< panel status="notice" title="Bearbeitungsstand" >}}Status:2.Durchsicht.

Text wurde gesichtet, Fussnoten gesetzt, Bibel-Zitate ergänzt und weiter Korrekturen gemacht.{{< /panel >}}
```


```
{{< panel status="successe" title="Bearbeitungsstand" >}}Status:Abgeschlossen.

Text hat seine Endfassung und nur noch vereinzelt Fehler.{{< /panel >}}
```
Es gibt den Status: warning, caution, success, notice