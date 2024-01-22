// import 'package:flutter/material.dart';
// import 'package:maze/maze.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MazeGame(),
//     );
//   }
// }

// class MazeGame extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Maze(
//           player: MazeItem(
//             'assets/player.png',
//             ImageType.asset,
//           ),
//           columns: 5,
//           rows: 5,
//           wallThickness: 4.0,
//           wallColor: Colors.blue,
//           finish: MazeItem(
//             'assets/finish.png',
//             ImageType.asset,
//           ),
//           onFinish: () {
//             // Handle game completion
//             print('Congratulations! You finished the maze!');
//           },
//         ),
//       ),
//     );
//   }
// }
