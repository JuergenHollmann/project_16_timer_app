import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_exit_app/flutter_exit_app.dart';
import 'package:project_16_timer_app/config/wb_colors.dart';
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

                /*--------------------------------- *** ---*/
                // Abfrage ob wirklich die App geschlossen werden soll:
                

            FlutterExitApp.exitApp(iosForceExit: true);
            //const ExitApp();
          }
        });
    /*--------------------------------- *** ---*/
  }
}
