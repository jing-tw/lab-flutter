import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget { // Create a widget that does not require mutable state
  @override
  Widget build(BuildContext context) { // Overwrite the build method
    final wordPair = WordPair.random(); // <<---- Create a create a compound word randomly
    return MaterialApp( // Create a App that uses material design
      title: 'Welcome to Flutter',
      home: Scaffold( // Apply the basic material layout
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text(wordPair.asPascalCase), //<---- show the WordPair
        ),
      ),
    );
  }
}