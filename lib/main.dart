import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Styling App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Text Styling App'),
        ),
        body: const TextStylingPage(),
      ),
    );
  }
}

class TextStylingPage extends StatelessWidget {
  const TextStylingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Flutter Text Styling',
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
              height: 10), // Adds space between the title and subtitle
          const Text(
            'Experiment with text styles',
            style: TextStyle(
              fontSize: 20.0,
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
              height: 20), // Adds space between the subtitle and button
          TextButton(
            onPressed: () {
              const snackBar = SnackBar(
                content: Text('You clicked the button!'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: const Text(
              'Click Me',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.deepPurpleAccent,
              ),
            ),
          ),
          const SizedBox(
              height: 20), // Adds space between the button and welcome text
          const Text.rich(
            TextSpan(
              text: 'Welcome to ',
              children: <TextSpan>[
                TextSpan(
                  text: 'Flutter!',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            style: TextStyle(fontSize: 20.0),
          ),
        ],
      ),
    );
  }
}
