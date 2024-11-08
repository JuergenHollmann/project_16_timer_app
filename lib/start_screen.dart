import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:project_16_timer_app/config/wb_button_universal.dart';
import 'package:project_16_timer_app/config/wb_colors.dart';
import 'package:project_16_timer_app/config/wb_navigation_bar.dart';
import 'package:project_16_timer_app/config/wb_sizes.dart';
import 'package:project_16_timer_app/stopwatch_screen.dart';
import 'package:project_16_timer_app/timer_screen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  //final int _currentPageIndex = 0;
  final List<Widget> screens = [
    const TimerScreen(),
    const StartScreen(),
    const StopWatchScreen(),
  ];
  /*--------------------------------- *** ---*/
  int _iMilisec = 0;
  int _iSec = 0;
  int _iMin = 0;
  List<int> _iStopWatch = [0, 0, 0];
  bool counterStart = true;

  void runCounter(int iCounter) async {
    while (counterStart == true) {
      await Future.delayed(const Duration(milliseconds: 1), () => iCounter++);
      _iMilisec = iCounter;
      if (_iMilisec > 1000) {
        iCounter = 0;
        _iSec++;
        if (_iSec > 60) {
          _iSec = 0;
          _iMin++;
        }
      }
      if (counterStart) {
        setState(() {
          _iStopWatch[0] = _iMilisec;
          _iStopWatch[1] = _iSec;
          _iStopWatch[2] = _iMin;
        });
      }
    }
  }

  void startCounter(int iStopWatch) {
    setState(() {
      counterStart = true;
      runCounter(iStopWatch);
    });
  }

  Future<void> stopCounter() async {
    Future.delayed(
        const Duration(milliseconds: 200), () => counterStart = false);
    setState(() {
      counterStart = false;
    });
  }

  void clearCounter() {
    _iStopWatch = [0, 0, 0];
    _iMilisec = 0;
    _iSec = 0;
    _iMin = 0;
  }

  String? timeFunction(int sTsTcL) {
    switch (sTsTcL) {
      case 0:
        return "Start";
      case 1:
        return "Stop";
      case 2:
        return "Clear";
    }
    return null;
  }

/*--------------------------------- *** ---*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 217, 103),
      /*--------------------------------- AppBar ---*/
      appBar: AppBar(
        backgroundColor: wbColorAppBarBlue,
        title: const Text(
          'Stoppuhr und Timer',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      /*--------------------------------- body ---*/
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Text('Page $_currentPageIndex'), // nur zur Kontrolle anzeigen
                /*--------------------------------- Überschrift ---*/
                const Text(
                  "Stoppuhr",
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 6,
                    color: wbColorButtonBlue,
                    shadows: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 8,
                        offset: Offset(4, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
                wbSizedBoxHeight32,
                /*--------------------------------- Eingabe Sekunden ---*/
                TextFormField(
                  keyboardType: TextInputType.number,
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: wbColorAppBarBlue,
                  ),
                  textAlign: TextAlign.left,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.all(16),
                    errorStyle: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      backgroundColor: Colors.yellow,
                    ),

                    /*--- labelStyle ---*/
                    labelText: "Eingabe: Sekunden",
                    labelStyle: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.white,
                    ),

                    /*--- prefixIcon ---*/
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(16),
                      child: Icon(
                        size: 60,
                        Icons.share_arrival_time_outlined,
                      ),
                    ),

                    /*--- hintText ---*/
                    hintText: "Bitte Sekunden eingeben",
                    hintStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Colors.black38,
                    ),

                    /*--- border ---*/
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                  ),
                ),
                wbSizedBoxHeight16,
                Row(
                  children: [
                    /*--------------------------------- Text Minuten-Counter ---*/
                    SizedBox(
                      width: 180,
                      child: Center(
                        child: Text(
                          /*--------------------------------- *** ---*/
                          "${_iStopWatch[2]}",
                          /*--------------------------------- *** ---*/
                          style: const TextStyle(
                            fontSize: 80,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                    /*--------------------------------- Text Doppelpunkt ---*/
                    const SizedBox(
                      width: 20,
                      child: Center(
                        child: Text(
                          /*--------------------------------- *** ---*/
                          ":",
                          /*--------------------------------- *** ---*/
                          style: TextStyle(
                            fontSize: 80,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                    /*--------------------------------- Text Sekunden-Counter ---*/
                    SizedBox(
                      width: 190,
                      child: Center(
                        child: Text(
                          /*--------------------------------- *** ---*/
                          "${_iStopWatch[1]}",
                          /*--------------------------------- *** ---*/
                          style: const TextStyle(
                            fontSize: 80,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                    /*--------------------------------- *** ---*/
                  ],
                ),
                /*--------------------------------- *** ---*/
                const Row(
                  children: [
                    /*--------------------------------- Text Minuten-Text ---*/
                    SizedBox(
                      width: 180,
                      child: Center(
                        child: Text(
                          "Minuten",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                    /*--------------------------------- Text Sekunden-Text ---*/
                    wbSizedBoxWidth24,
                    SizedBox(
                      width: 180,
                      child: Center(
                        child: Text(
                          "Sekunden",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                    /*--------------------------------- *** ---*/
                  ],
                ),
                /*--------------------------------- *** ---*/
                wbSizedBoxHeight8,
                /*--------------------------------- Text Millisekunden ---*/
                Center(
                  child: Text(
                    /*--------------------------------- *** ---*/
                    "... und ${_iStopWatch[0]} Millisekunden",
                    /*--------------------------------- *** ---*/
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                /*--------------------------------- *** ---*/
                wbSizedBoxHeight16,

                Row(
                  children: [
                    /*--------------------------------- WbButtonUniversal Start ---*/
                    Expanded(
                      child: GestureDetector(
                        child: WbButtonUniversal(
                          wbColor: wbColorButtonGreen,
                          icon: Icons.timer_outlined,
                          iconSize: 40,
                          wbButtonUniversalText: "Start",
                          onButtonTap: () {
                            /*--------------------------------- *** ---*/
                            startCounter(_iStopWatch[0]);
                            /*--------------------------------- Snackbar ---*/
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              backgroundColor: wbColorButtonGreen,
                              duration: Duration(milliseconds: 800),
                              content: Text(
                                "Die Stoppuhr wurde gestartet ... 😉",
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ));
                            /*--------------------------------- *** ---*/
                            log("Start 309");
                          },
                          width: 120,
                          height: 60,
                        ),
                        onTap: () {},
                      ),
                    ),
                    wbSizedBoxWidth32,
                    /*--------------------------------- WbButtonUniversal Stopp ---*/
                    GestureDetector(
                      child: WbButtonUniversal(
                        wbColor: wbColorButtonDarkRed,
                        icon: Icons.stop_circle_outlined,
                        iconSize: 40,
                        wbButtonUniversalText: "Stopp",
                        onButtonTap: () {
                          /*--------------------------------- Stopp ---*/
                          stopCounter();
                          /*--------------------------------- Snackbar ---*/
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            backgroundColor: wbColorButtonDarkRed,
                            duration: Duration(milliseconds: 800),
                            content: Text(
                              "Die Stoppuhr wurde angehalten ... 😉",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ));
                          /*--------------------------------- *** ---*/
                          log("Stopp 333");
                        },
                        width: 180,
                        height: 60,
                      ),
                    ),
                    wbSizedBoxWidth8,
                  ],
                ),
                wbSizedBoxHeight24,
                /*--------------------------------- WbButtonUniversal Reset ---*/
                WbButtonUniversal(
                  wbColor: wbColorOrangeDarker,
                  icon: Icons.restore_outlined,
                  iconSize: 40,
                  wbButtonUniversalText: "Stoppuhr zurücksetzen",
                  onButtonTap: () {
                    /*--------------------------------- Reset ---*/
                    stopCounter();
                    clearCounter();
                    /*--------------------------------- Snackbar ---*/
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      backgroundColor: wbColorOrangeDarker,
                      duration: Duration(milliseconds: 800),
                      content: Text(
                        "Die Stoppuhr wurde zurückgesetzt ... 😉",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ));
                    /*--------------------------------- *** ---*/
                  },
                  width: 398,
                  height: 60,
                ),
              ],
            ),
          ),
        ),
      ),
      // /*--------------------------------- WbNavigationBar ---*/
      bottomNavigationBar: const WbNavigationBar(),
    );
  }
}
