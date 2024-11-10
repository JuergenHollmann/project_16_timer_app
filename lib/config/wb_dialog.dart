// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:project_16_timer_app/config/wb_button_universal.dart';
// import 'package:project_16_timer_app/config/wb_colors.dart';

// class WbDialog extends StatefulWidget {
//   const WbDialog({super.key, required this.onPressed});

// // /*--------------------------------- fullscreen - Dialog ---*/
// // erstellt einen Vollbild-Dialog:
// // https://api.flutter.dev/flutter/material/Dialog/Dialog.fullscreen.html
// // const Dialog.fullscreen({
// //   super.key,
// //   this.backgroundColor,
// //   this.insetAnimationDuration = Duration.zero,
// //   this.insetAnimationCurve = Curves.decelerate,
// //   this.child,
// // }) : elevation = 0,
// //      shadowColor = null,
// //      surfaceTintColor = null,
// //      insetPadding = EdgeInsets.zero,
// //      clipBehavior = Clip.none,
// //      shape = null,
// //      alignment = null,
// //      _fullscreen = true;
// // /*--------------------------------- fullscreen - ENDE ---*/


//   final VoidCallback onPressed;


//   @override
//   State<WbDialog> createState() => _WbDialogState();
// }

// class _WbDialogState extends State<WbDialog> {


//     bool isAppLocked = true;


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//     body: isAppLocked ? (
//    Dialog(
//       child: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             const Text("Bestätigen"),
//             /*--------------------------------- Button 1 ---*/
//             WbButtonUniversal(
//               wbColor: wbColorButtonGreen,
//               icon: Icons.report_outlined, // dangerous_outlined
//               iconSize: 40,
//               wbButtonUniversalText: "Nein",
//               onButtonTap: () {
//                 setState(() {
//                   isAppLocked = false;
//                 });
//                 Navigator.pop(context);
//                 /*--------------------------------- Snackbar ---*/
//                 ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//                   backgroundColor: wbColorButtonGreen,
//                   duration: Duration(milliseconds: 800),
//                   content: Text(
//                     "Die Stoppuhr-App wurde NICHT beendet ... 😉",
//                     style: TextStyle(
//                       fontSize: 28,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ));
//                 /*--------------------------------- *** ---*/
//                 log("0042 - lib/config/wb_dialog.dart");
//               },
//               width: 398, //155,
//               height: 60,
//             ),
//             /*--------------------------------- *** ---*/
//           ],
//         ),
//       ),
//       ), 
//     ),
//       );
//   }
// }
