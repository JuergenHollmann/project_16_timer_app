import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:project_16_timer_app/config/wb_alert_dialog.dart';
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
          /*--------------------------------- WbDialog ---*/
// showDialog(context: context, builder: (BuildContext context) => WbDialog(onPressed: (){
// Navigator.pop(context);
// }));
          /*--------------------------------- WbDialog - Ende ---*/
          /*--------------------------------- AlertDialog ---*/
          // Abfrage ob die App geschlossen werden soll:
          showDialog(
              context: context,
              builder: (BuildContext context) => const WBAlertDialog(
                    headLineText:
                        "Möchtest Du jetzt wirklich diese tolle App beenden?",
                    descriptionText:
                        "Bevor Du diese tolle App beendest, denke bitte daran:\n\n Bei aller Aufregung sollten wir aber nicht vergessen, dass Al Bundy im Jahr 1966 vier Touchdowns in einem Spiel gemacht hat und damit den den Polk High School Panthers zur Stadtmeisterschaft verholfen hat!\n\nAußerdem sollte man auf gesunde Ernährung achten, deshalb empfehle ich täglich ein gutes Käsebrot (für Vegetarier und Veganer natürlich auch gerne mit veganer Butter).\n\nWenn du keinen Käse magst, dann kannst du natürlich auch ein Wurstbrot essen, aber dann ist das logischerweise wiederum nicht vegan (aber es gibt ja auch vegane Wurst) und in diesem Falle kannst du eben auch die Wurst weglassen, wenn Du eine vegane Butter auf dem Brot hast. \n\nWarum schreibe ich das alles hier hin?\n\nGanz einfach:\nWeil ich zeigen wollte, dass diese Textzeilen SCROLLBAR sind.",
                  ));
          /*--------------------------------- AlertDialog ---*/
          // Abfrage ob die App geschlossen werden soll:
          // showDialog(
          //     context: context,
          //     builder: (BuildContext context) => const WBAlertDialog(
          //           headLineText: "Möchtest Du jetzt die App beenden?",
          //           descriptionText: "das ist die Beschreibung",
          //         ));
          /*--------------------------------- AlertDialog ---*/
          // showDialog(
          //     context: context,
          //     builder: (BuildContext context) => WBAlertDialog(
          //             //icon: Icons.adb,
          //             headLineText:
          //                 "Möchtest Du jetzt wirklich diese tolle App beenden?",
          //             descriptionText:
          //                 "Bevor Du diese tolle App beendest, denke bitte daran:\n\n Bei aller Aufregung sollten wir aber nicht vergessen, dass Al Bundy im Jahr 1966 vier Touchdowns in einem Spiel gemacht hat und damit den den Polk High School Panthers zur Stadtmeisterschaft verholfen hat!\n\nAußerdem sollte man auf gesunde Ernährung achten, deshalb empfehle ich täglich ein gutes Käsebrot (für Vegetarier und Veganer natürlich auch gerne mit veganer Butter).\n\nWenn du keinen Käse magst, dann kannst du natürlich auch ein Wurstbrot essen, aber dann ist das logischerweise wiederum nicht vegan (aber es gibt ja auch vegane Wurst) und in diesem Falle kannst du eben auch die Wurst weglassen, wenn Du eine vegane Butter auf dem Brot hast. \n\nWarum schreibe ich das alles hier hin?\n\nGanz einfach:\nWeil ich zeigen wollte, dass diese Textzeilen SCROLLBAR sind.",
          //             // actions: [
          //             //   WbButtonUniversal(
          //             //       wbColor: wbColorAppBarBlue,
          //             //       icon: Icons.ac_unit_rounded,
          //             //       iconSize: 40,
          //             //       wbButtonUniversalText: "wbButtonUniversalText",
          //             //       onButtonTap: () {},
          //             //       width: 120,
          //             //       height: 60)
          //             // ]));

          //      WBAlertDialog(
          //            headLineText: "headLineText",
          //            descriptionText: "descriptionText",
          //            actions: [
          //              WbButtonUniversal(
          //                wbColor: wbColorButtonGreen,
          //                icon: Icons.report_outlined, // dangerous_outlined
          //                iconSize: 40,
          //                wbButtonUniversalText: "Nein",
          //                onButtonTap: () {
          //                  Navigator.pop(context);
          //                  /*--------------------------------- Snackbar ---*/
          //                  ScaffoldMessenger.of(context)
          //                      .showSnackBar(const SnackBar(
          //                    backgroundColor: wbColorButtonGreen,
          //                    duration: Duration(milliseconds: 800),
          //                    content: Text(
          //                      "Die Stoppuhr-App wurde NICHT beendet ... 😉",
          //                      style: TextStyle(
          //                        fontSize: 28,
          //                        fontWeight: FontWeight.bold,
          //                        color: Colors.white,
          //                      ),
          //                    ),
          //                  ));
          //                  /*--------------------------------- *** ---*/
          //    log("192 - lib/config/wb_navigation_bar.dart");
          // },
          //      width: 155,
          //               height: 60,
          //              ),
          //            ],
          //          ),);
          /*--------------------------------- *** ---*/
        }
      },
    );
    /*--------------------------------- *** ---*/
  }
}
