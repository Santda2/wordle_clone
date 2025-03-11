import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wordle/App/app_colors.dart';

enum LetterStatus {
  initial,
  notInWord,
  inWord,
  correct,
}

class Letter extends Equatable {
  const Letter({required this.val, this.status = LetterStatus.initial});

  final String val;
  final LetterStatus status;

  factory Letter.empty() => const Letter(val: "");

  Color get backgroundColor {
    switch (status) {
      case LetterStatus.initial:
        return Colors.transparent;
      case LetterStatus.correct:
        return correctColor;
      case LetterStatus.inWord:
        return inWordColor;
      case LetterStatus.notInWord:
        return incorrectColor;
    }
  }

  Color get borderColor {
    switch (status) {
      case LetterStatus.initial:
        return Colors.grey;
      default:
        return Colors.transparent;
    }
  }

  Letter copyWith(String? val, LetterStatus? status) {
    return Letter(val: val ?? this.val, status: status ?? this.status);
  }

  @override
  List<Object?> get props => [val, status];
}
