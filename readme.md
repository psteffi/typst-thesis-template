# Struktur innerhalb des Templates
## Baumstruktur
Für eine saubere Struktur innerhalb des Templates sollte darauf geachtet werden, Dateien in entsprechende Ordner zu untergliedern.
Während der `main` Ordner alle Informationen für die korrekte Darstellung des Templates inne hat und somit nicht modifiziert werden muss, können im Ordner `chapters` die einzelnen Kapitel verortet werden.

Der `images` Ordner verfügt über jegliche Ressourcen, welche während der Ausarbeitung verwendet werden, darunter zählen insbesondere Bilddateien.
Bedingt der Anzahl an Ressourcen pro Kapitel ist es ggf. ratsam, eine tiefere Struktur entsprechend der Oberkapitel anzulegen.

## Nomenklatur
Kapitel werden mit doppelten Zahlen numeriert, so z.B. `00_Einleitung`.
Dies dient der Erweiterbarkeit zu einer tieferen Struktur mit Unterkapiteln, sollte dies von Nöten sein, so z.B. `01_Umfeld`, `02_Ziel`.
Entsprechend werden Unterkapitel eines Kapitels `10_Grundlagen` durch `11_Modellbasierte-Softwareentwicklung`, `12_PREEvision`, etc. gegliedert.

Bilder und weitere kapitelspezifische Dateien sollten ebenfalls der zuvor etablierten Benennung folgen sowie einen kurzen, aber prägnanten Titel tragen; eine Bilddatei aus dem Kapitel `12_PREEvision` ist z.B. `12_Modelview` benannt.

Um jene Ressourcen während des Schreibens korrekt und zuverlässig dem Kontext zuordnen sowie Referenzen auf diese erstellen zu können, ist es weiterhin ratsam, bei Einbindung in die Ausarbeitung einen `Tag` mithilfe von `<>` zu setzen.
``` typ
#figure(
    image("path/to/myimage"),
    caption: [A depiction of my image]
) <myimage>
```

# Umgang mit GitHub
## Commits
Commits auf GitHub sollten pro Datei bzw. Änderung jeweils **einzeln** mit einer **eigenen** Commit Message ablaufen, um die korrekte Zuordnung zu gewährleisten.

Es ist davon abzusehen, mehrere Dateien aus Bequemlichkeit unter derselben Commit Message zu verorten.
Ausnahmen bestehen darin, falls jede Ressource unter der gleichen gemeinsamen Commit Message zusammengefasst werden kann, oder die vollbrachten Änderungen nur in Zusammenarbeit aller in einem Commit gruppierten Dateien korrekt bewerkstelligt werden können.

## Commit Messages
Commit Messages sollten in klarer, aber kurzer Form widergeben, welche Änderungen oder Verbesserungen an einer bestimmten Datei stattgefunden haben.
Beinhaltet ein Commit mehrere Dateien, so ist der genaue Kontext der Änderung anzugeben, z.B. wenn die Ressourcen um ein spezifisches Kapitel betreffende Inhalte erweitert werden.

# Erstellen der PDF
Mithilfe des `makefiles`, das direkt unter der Wurzel zu finden ist, kann über den simplen Kommandozeilenbefehl `make` die PDF basierend auf dem `typst`-Projekt erstellt werden.
Die Datei ist daraufhin unter dem Namen `thesis.pdf` unter `result/thesis.pdf` wiederzufinden.
Bei Bedarf können sowohl Zielort als auch Benennung innerhalb des `makefiles` angepasst werden.
