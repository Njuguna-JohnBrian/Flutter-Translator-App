import 'package:flutter/material.dart';

void main() => runApp(HelloFlutterApp());

class HelloFlutterApp extends StatefulWidget {
  const HelloFlutterApp({Key? key}) : super(key: key);

  @override
  State<HelloFlutterApp> createState() => _HelloFlutterAppState();
}

String englishGreeting = 'Hello Flutter';
String spanishGreeting = 'Hola Flutter';

class _HelloFlutterAppState extends State<HelloFlutterApp> {
  String displayText = englishGreeting;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Translator'),
          leading: Icon(Icons.home),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                setState(() {
                  displayText = displayText == englishGreeting
                      ? spanishGreeting
                      : englishGreeting;
                });
              },
            ),
          ],
        ),
        body: Center(
          child: Text(
            displayText,
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
