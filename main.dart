import 'package:flutter/material.dart';
import 'package:flutter_tic_tac_toe/game_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FrontPage(), // Change home to FrontPage
    );
  }
}

class FrontPage extends StatelessWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tic Tac Toe'), // Title of the game
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/tic_tac_toe_icon.png', // Replace with your image asset path
              width: 1000, // Adjust the width as needed
              height: 300, // Adjust the height as needed
            ),
            SizedBox(height: 50), // Adding some space between the image and button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GamePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                elevation: 5, // Set the elevation of the button
                minimumSize: Size(200, 60), // Set the minimum size of the button
              ),
              child: const Text(
                'Start Game',
                style: TextStyle(fontSize: 20), // Adjust the font size of the button text
              ), // Start button
            ),
          ],
        ),
      ),
    );
  }
}