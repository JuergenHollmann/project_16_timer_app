import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_exit_app/flutter_exit_app.dart';
import 'package:project_16_timer_app/config/wb_button_universal.dart';
import 'package:project_16_timer_app/config/wb_colors.dart';
import 'package:project_16_timer_app/config/wb_sizes.dart';
import 'package:project_16_timer_app/start_screen.dart';
import 'package:project_16_timer_app/stopwatch_screen.dart';
import 'package:project_16_timer_app/timer_screen.dart';

class WbNavigationBar extends StatefulWidget {
  const WbNavigationBar({super.key});

  @override
  State<WbNavigationBar> createState() => _WbNavigationBarState();
}

class _WbNavigationBarState extends State<WbNavigationBar> {
  int currentPageIndex = 0;

  final List<Widget> screens = [
    const TimerScreen(),
    const StartScreen(),
    const StopWatchScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
        height: 140,
        elevation: 0,
        backgroundColor: Colors.blue,
        // labelBehavior:
        // selectedIndex: 0, //currentPageIndex,
        // selectedIndex: currentPageIndex,
        // selectedItemColor: Colors.black,
        indicatorColor: Colors.black,

        // indicatorShape: const RoundedRectangleBorder(borderRadius: 100),
        // /*--------------------------------- *** ---*/
        // selectedIndex: currentPageIndex,
        // onDestinationSelected: (int index) {
        //   setState(() {
        //     currentPageIndex = index;
        //     // selectedIndex = index;
        //   });
        //   log("Button $index geklickt");
        //   if (index == 1) {
        //     ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        //       backgroundColor: wbColorButtonGreen,
        //       content: Text(
        //         "Diese Funktion kommt bald in einem KOSTENLOSEN Update ... 😉",
        //         style: TextStyle(
        //           fontSize: 28,
        //           fontWeight: FontWeight.bold,
        //           color: Colors.white,
        //         ),
        //       ),
        //     ));
        //   }
        // },
        /*--------------------------------- Stoppuhr ---*/
        destinations: const [
          NavigationDestination(
            icon: Icon(
              Icons.timer_outlined,
              size: 90,
              color: Colors.white,
              shadows: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 8,
                  offset: Offset(4, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            label: "Stoppuhr",
            enabled: true,
          ),
          /*--------------------------------- Timer ---*/
          NavigationDestination(
            icon: Icon(
              Icons.av_timer_outlined,
              size: 90,
              color: Colors.white,
              shadows: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 8,
                  offset: Offset(4, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            label: "Timer",
            enabled: true,
          ),
          /*--------------------------------- Stoppuhr ---*/
          NavigationDestination(
            icon: Icon(
              Icons.cancel_outlined,
              size: 90,
              color: Colors.white,
              shadows: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 8,
                  offset: Offset(4, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            label: "Beenden",
            enabled: true,
          ),
          /*--------------------------------- *** ---*/
        ],
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
          log("Button $index geklickt");
          if (index == 1) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              backgroundColor: wbColorButtonGreen,
              content: Text(
                "Diese Funktion kommt bald in einem KOSTENLOSEN Update ... 😉",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ));
          } else if (index == 2) {
            log("Index 2 = ExitApp geklickt");
            // /*--------------------------------- *** ---*/
            //   showDatePicker( // Kalender mit Datumsauswahl einblenden
            //     context: context,
            //     firstDate: DateTime.now(),
            //     lastDate: DateTime.now(),
            //   );
            /*--------------------------------- AlertDialog ---*/
            // Abfrage ob die App geschlossen werden soll:
            showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                        // shape: const BeveledRectangleBorder(
                        //   side: BorderSide(
                        //     color: Colors.white,
                        //   ),
                        // ),

                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          side: BorderSide(
                            style: BorderStyle.solid,
                            width: 3,
                            color: wbColorBackgroundBlue,
                            strokeAlign: 1,
                          ),
                        ),
                        shadowColor: Colors.black,

                        // [
                        //   BoxShadow(
                        //     color: Colors.black,
                        //     blurRadius: 8,
                        //     offset: Offset(4, 4),
                        //     spreadRadius: 0,
                        //   )
                        // ],

                        backgroundColor: wbColorButtonBlue,
                        /*--------------------------------- Überschrift ---*/
                        title: const Text('Möchtest Du jetzt die App beenden?',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            )),
                        /*--------------------------------- Beschreibung ---*/
                        content: const Text(
                          "",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                        /*--------------------------------- actions ---*/
                        actions: <Widget>[
                          /*--------------------------------- Button 1 ---*/
                          WbButtonUniversal(
                            wbColor: wbColorButtonGreen,
                            icon: Icons.report_outlined, // dangerous_outlined
                            iconSize: 40,
                            wbButtonUniversalText: "Nein",
                            onButtonTap: () {
                              Navigator.pop(context);
                              /*--------------------------------- Snackbar ---*/
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                backgroundColor: wbColorButtonGreen,
                                duration: Duration(milliseconds: 800),
                                content: Text(
                                  "Die Stoppuhr-App wurde NICHT beendet ... 😉",
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ));
                              /*--------------------------------- *** ---*/
                              log("192 - lib/config/wb_navigation_bar.dart");
                            },
                            width: 155,
                            height: 60,
                          ),
                          /*--------------------------------- *** ---*/
                          wbSizedBoxHeight24,
                          /*--------------------------------- Button 2 ---*/
                          WbButtonUniversal(
                            wbColor: wbColorButtonDarkRed,
                            icon: Icons.dangerous_outlined, // report_outlined
                            iconSize: 40,
                            wbButtonUniversalText: "Ja - Beenden",
                            onButtonTap: () {
                              Navigator.pop(context);
                              /*--------------------------------- Snackbar ---*/
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                backgroundColor: Colors.black,
                                duration: Duration(milliseconds: 2000),
                                content: Text(
                                  "Danke für das Benutzen der Stoppuhr-App ... 😉",
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ));
                              /*--------------------------------- *** ---*/
                              log("223 - lib/config/wb_navigation_bar.dart");
                              /*--------------------------------- *** ---*/
                              // Verzögerug von 2 Sekunden einbauen:
                              // Future<void> withDelay() async {
                              //   await Future.delayed(
                              //       const Duration(seconds: 2));
                              //   log("229 - lib/config/wb_navigation_bar.dart");
                              //   FlutterExitApp.exitApp(
                              //       iosForceExit: true); // funzt nicht!
                              // }
                              /*--------------------------------- *** ---*/
                              FlutterExitApp.exitApp(iosForceExit: true);
                            },
                            width: 260,
                            height: 60,
                          ),
                          /*--------------------------------- *** ---*/
                        ]));
            /*--------------------------------- *** ---*/
          }
        });
    /*--------------------------------- *** ---*/
  }
}
