// Todo's:

/* Wechsle die Farbe des Buttons beim Anklicken:
String color = isSunny ? 'yellow' : 'blue'; // ternärer Operator? */

/* anstelle von "SelectionPage" eine Liste mit Verknüpfungen "NavigateToPageName" zu allen Seiten anlegen:
builder: (context) => const SelectionPage(), // NavigateToPageName(), //SelectionPage(),*/

import 'package:flutter/material.dart';

class WbButtonUniversal extends StatelessWidget {
  const WbButtonUniversal({
    super.key,
    required this.wbColor,
    required this.icon,
    required this.iconSize,
    required this.wbButtonUniversalText,
    required this.onButtonTap,
    required this.width,
    required this.height,
  });

  final Color wbColor;
  final IconData icon;
  final double iconSize;
  final String wbButtonUniversalText;
  final double width;
  final double height;

  final void Function() onButtonTap;

  @override
  Widget build(BuildContext context) {
    /*-------------------------------------------------- Button ---*/
    return Container(
      width: width,
      height: height,
      decoration: ShapeDecoration(
        shadows: const [
          BoxShadow(
            color: Colors.black,
            blurRadius: 8,
            offset: Offset(4, 4),
            spreadRadius: 0,
          )
        ],
        color: wbColor,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 2,
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(
            16,
          ),
        ),
      ),

      /*-------------------------------------------------- Gesture ---*/
      child: GestureDetector(
        onTap: onButtonTap,
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),

                  // -------------------------------------------------- Icon ---*/
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: iconSize,
                    shadows: const [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 8,
                        offset: Offset(4, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
                Expanded(
                  // -------------------------------------------------- Padding Center Text ---
                  // child: Center(
                  // /* dieses Padding richtet den Text mittig aus (weil oben padding 16 + Rand 32 = 48 ist ) */
                  // child: Padding(
                  //   padding: const EdgeInsets.only(right: 80),
                  // -------------------------------------------------- Text ---
                  child: Text(
                    wbButtonUniversalText,
                    style: const TextStyle(
                      color: Colors.white,
                      shadows: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 8,
                          offset: Offset(4, 4),
                          spreadRadius: 0,
                        )
                      ],
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 2, // Zwischenraum der Buchtstaben
                    ),
                  ),
                  // ), // Padding
                  // ), // Center
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
