import 'package:flutter/material.dart';
import 'package:project_16_timer_app/config/wb_button_universal.dart';
import 'package:project_16_timer_app/config/wb_colors.dart';
import 'package:project_16_timer_app/config/wb_navigation_bar.dart';
import 'package:project_16_timer_app/config/wb_sizes.dart';
import 'package:project_16_timer_app/start_screen.dart';

class StopWatchScreen extends StatefulWidget {
  const StopWatchScreen({super.key});

  @override
  State<StopWatchScreen> createState() => _StopWatchScreenState();
}

class _StopWatchScreenState extends State<StopWatchScreen> {
  final int _currentPageIndex = 1;

  final List<Widget> screens = [
    const StopWatchScreen(),
    const StartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 217, 103),
      /*--------------------------------- AppBar ---*/
      appBar: AppBar(
        backgroundColor: wbColorAppBarBlue,
        title: const Text(
          'Timer und Stoppuhr',
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Page $_currentPageIndex'), // nur zur Kontrolle anzeigen
              /*--------------------------------- Überschrift ---*/
              const Text(
                "Stoppwatch",
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
                //validator: Validator.isValidUsername,
                //controller: userNameTEC,
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

                /*--- onChanged ---*/
                // onChanged: (String newInputUsername) {
                //   log("Eingabe: $newInputUsername");
                //   inputUserName = newInputUsername;
                //   setState(() => inputUserName = newInputUsername);

                //   if (newInputUsername == userName) {
                //     log("Der Benutzername $userName ist KORREKT!");
                //     // ACHTUNG: Beim player den sound OHNE "assets/...", sondern gleich mit "sound/..." eintragen (siehe unten):
                //     player.play(AssetSource("sound/sound05xylophon.wav"));
                //     // player.play(AssetSource("sound/sound06pling.wav"));
                //     ScaffoldMessenger.of(context).showSnackBar(
                //       SnackBar(
                //         content: const Text("Benutzername ist KORREKT"),
                //         action: SnackBarAction(
                //           label: "OK",
                //           onPressed: () {},
                //         ),
                //       ),
                //     );

                //     // WBGreenButton(onTap: () {}); // funzt nicht
                //     setState(() {
                //       // loginButtonIsEnabled = true; // funzt nicht
                //       // WBGreenButton(onTap: () {}); // funzt nicht
                //     });
                //   } else {
                //     log("Die Eingabe für den Benutzername ist NICHT korrekt!");
                //     //const WBGreenButton(onTap: null); // funzt nicht
                //   }
                // },
              ),
              wbSizedBoxHeight16,
              const Row(
                children: [
                  /*--------------------------------- Text Minuten-Counter ---*/
                  SizedBox(
                    width: 180,
                    child: Center(
                      child: Text(
                        "00",
                        style: TextStyle(
                          fontSize: 80,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  /*--------------------------------- Text Doppelpunkt ---*/
                  SizedBox(
                    width: 20,
                    child: Center(
                      child: Text(
                        ":",
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
                        "00",
                        style: TextStyle(
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
              wbSizedBoxHeight24,
              Row(
                children: [
                  /*--------------------------------- WbButtonUniversal Start ---*/
                  Expanded(
                    child: WbButtonUniversal(
                      wbColor: wbColorButtonGreen,
                      icon: Icons.av_timer_outlined,
                      iconSize: 40,
                      wbButtonUniversalText: "Start",
                      onButtonTap: () {},
                      width: 120,
                      height: 60,
                    ),
                  ),
                  wbSizedBoxWidth32,
                  /*--------------------------------- WbButtonUniversal Stopp ---*/
                  WbButtonUniversal(
                    wbColor: wbColorButtonDarkRed,
                    icon: Icons.stop_circle_outlined,
                    iconSize: 40,
                    wbButtonUniversalText: "Stopp",
                    onButtonTap: () {},
                    width: 180,
                    height: 60,
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
                onButtonTap: () {},
                width: 398,
                height: 60,
              ),
            ],
          ),
        ),
      ),
      // /*--------------------------------- WbNavigationBar ---*/
      bottomNavigationBar: const WbNavigationBar(),
    );
  }
}
