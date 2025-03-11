import 'dart:math';
import 'package:wordle/Wordle/data/word_list.dart';
import 'package:flutter/material.dart';
import 'package:wordle/Wordle/Models/letter.dart';
import 'package:wordle/Wordle/Models/word.dart';

enum GameStatus { playing, submitting, lost, won }

class WordleScreen extends StatelessWidget {
  WordleScreen({super.key});
  final GameStatus _gameStatus = GameStatus.playing;

  final List<Word> _board = List.generate(
    6,
    (_) => Word(letters: List.generate(5, (_) => Letter.empty())),
  );

  int _correntWordIndex = 0;

  Word? get _currentWord =>
      _correntWordIndex < _board.length ? _board[_correntWordIndex] : null;

  final Word _solution = Word.fromString(
    fiveLetterWords[Random().nextInt(fiveLetterWords.length)].toUpperCase(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "WORDLE",
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            letterSpacing: 4;
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Board(board),
        ],
      ),
    );
  }
}
