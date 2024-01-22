import 'package:flutter/material.dart';
import 'package:maze/maze.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MazeGame(),
    );
  }
}

class MazeGame extends StatefulWidget {
  @override
  _MazeGameState createState() => _MazeGameState();
}

class _MazeGameState extends State<MazeGame> {
  bool success = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Maze Game'),
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Maze(
                  player: MazeItem(
                    'assets/player.png',
                    ImageType.asset,
                  ),
                  columns: 7, // Increase the number of columns
                  rows: 7, // Increase the number of rows
                  wallThickness: 4.0,
                  wallColor: Colors.blue,
                  finish: MazeItem(
                    'assets/finish.png',
                    ImageType.asset,
                  ),
                  onFinish: () {
                    // Handle game completion
                    setState(() {
                      success = true;
                    });
                    _showSuccessDialog(context);
                  },
                ),
                SizedBox(height: 20),
                if (success)
                  Text(
                    'Congratulations! You reached the destination!',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Congratulations!'),
          content: Text('You successfully completed the maze!'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                // Reset the game state
                setState(() {
                  success = false;
                });
              },
              child: Text('Restart'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                // Additional actions after closing the dialog
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
