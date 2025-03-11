import 'package:flutter/material.dart';
import 'package:wordle/Wordle/Views/wordle_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Wordle",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black87),
      home: WordleScreen(),
    );
  }
}
