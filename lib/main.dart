/*
Erstellung einer Timer-App (Stoppuhr-App)
* Timer-App in Flutter erstellen.
* Entweder als reine Timer App: Es läuft eine vorgegebene Anzahl an Sekunden (oder Minuten) ab,
* oder als Stoppuhr App: Es wird bei 0 gestartet, und die Zeit läuft nach oben. 

Timer-Funktion (Option 1)
Starten und Stoppen:
√ Ein Button zum Starten des Timers.
√ Ein Button zum Stoppen des Timers.
√ Zeitwahl: Ein Input-Feld zur Eingabe der Timer-Dauer (z.B. in Sekunden).
√ Anzeige: Eine Anzeige, die die verbleibende Zeit in Minuten und Sekunden zeigt.
Benachrichtigung: Eine einfache Benachrichtigung (z.B. Text, Snack-Bar, Hintergrund wechselt auf Grün, etc…), wenn der Timer abgelaufen ist.

Async und Await: Nutze async und await, um den Timer asynchron zu betreiben, sodass die UI nicht blockiert wird.

Stoppuhr-Funktion (Option 2)
√ Starten, Stoppen und Zurücksetzen:
√ Ein Button zum Starten der Stoppuhr.
√ Ein Button zum Stoppen der Stoppuhr.
√ Ein Button zum Zurücksetzen der Stoppuhr.
√ Anzeige: Eine Anzeige, die die verstrichene Zeit in Minuten, Sekunden und Millisekunden zeigt.
Async und Await:
Nutze async und await, um die Zeitmessung asynchron durchzuführen, sodass die UI nicht blockiert wird.

Optionale Anforderungen (für zusätzliche Herausforderung)
Eine App erstellen, die sowohl Timer- als auch Stoppuhr-Funktionen bietet. Über eine NavigationBar kann zwischen den zwei gewechselt werden.

Async und Await: Stelle sicher, dass du async und await verwendest, um die Timer- oder Stoppuhr-Funktionalität nicht-blockierend zu implementieren.

State Management: Nutze setState, um Änderungen im UI entsprechend der Zeitmesser-Aktivität anzuzeigen.
UI-Design: Halte das Design einfach und funktional. Halte dich vor allem am Anfang nicht zu sehr mit dem Styling auf und kümmere dich erstmal um die Funktionalitäten.
*/

import 'package:flutter/material.dart';
import 'package:project_16_timer_app/start_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StartScreen(),
    );
  }
}
