import 'dart:developer';

import 'package:flutter/material.dart';
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
  // int _currentPageIndex = 0;

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
      // labelBehavior
      // selectedIndex: 0, //_currentPageIndex,
      // selectedIndex: _currentPageIndex,
      //selectedItemColor: Colors.black,
      indicatorColor: Colors.black,

      //onDestinationSelected: (index) {
      onDestinationSelected: (index) {
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
        }

        setState(() {
          // _currentPageIndex = index;
          // selectedIndex = index;
        });
      },
      destinations: const [
        // Icons horizontal angeordnet
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
        ),
      ],
      // const StopWatchScreen();
      // selectedIndex: index,
      // _currentPageIndex = index,
      // currentIndex = _currentPageIndex,
      // selectedItemColor: Colors.black,
      // onTap: _onItemTapped,
    );
  }
}

      // /*--------------------------------- BottomNavigationBar ---*/
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: wbColorAppBarBlue,
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.av_timer_outlined,
      //         size: 120,
      //         color: Colors.white,
      //         shadows: [
      //           BoxShadow(
      //             color: Colors.black,
      //             blurRadius: 8,
      //             offset: Offset(4, 4),
      //             spreadRadius: 0,
      //           )
      //         ],
      //       ),
      //       label: "Timer",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.timer_outlined,
      //         size: 120,
      //         color: Colors.white,
      //         shadows: [
      //           BoxShadow(
      //             color: Colors.black,
      //             blurRadius: 8,
      //             offset: Offset(4, 4),
      //             spreadRadius: 0,
      //           )
      //         ],
      //       ),
      //       label: "Stoppuhr",
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.white,
      //   onTap: _onItemTapped,
      // ),
      // /*--------------------------------- *** ---*/
