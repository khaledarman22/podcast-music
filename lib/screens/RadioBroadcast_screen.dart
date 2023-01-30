// // ignore_for_file: must_be_immutable

// import 'dart:math';

// import 'package:audio_wave/audio_wave.dart';
// import 'package:flutter/material.dart';
// import 'package:podcast/constants/main_constant.dart';
// import 'package:wave_progress_bars/wave_progress_bars.dart';

// class RadioBroadcastScreen extends StatelessWidget {
//   RadioBroadcastScreen({Key? key}) : super(key: key);
//   final List<double> values = [];
//   @override
//   Widget build(BuildContext context) {
//     var rng = new Random();
//     for (var i = 0; i < 100; i++) {
//       values.add(rng.nextInt(70) * 1.0);
//     }
//     return Scaffold(
//       body: Center(
//         child: WaveProgressBar(
//           progressPercentage: 20,
//           listOfHeights: values,
//           width: MediaQuery.of(context).size.width,
//           initalColor: Colors.grey,
//           progressColor: Colors.red,
//           backgroundColor: Colors.white,
//           timeInMilliSeconds: 2000,
//           isHorizontallyAnimated: true,
//           isVerticallyAnimated: true,
//         ),
//       ),
//     );
//   }
// }
