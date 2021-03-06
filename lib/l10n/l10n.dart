import 'package:flutter/material.dart';
import 'package:ftrainer/model/card_exercises.dart';

class L10n {
  static final all = [
    const Locale('en'),
    const Locale('uk'),
    const Locale('ru'),
  ];

  static String getFlag(String code) {
    switch (code) {
      case 'uk':
        return 'πΊπ¦';
      case 'ru':
        return 'π·πΊ';
      case 'en':
      default:
        return 'πΊπΈ';
    }
  }

  static List<List<GroupExModel>> getListEx(String code) {
    switch (code) {
      case 'uk':
        return dayExercisesUKR;
      case 'ru':
        return dayExercisesRU;
      case 'en':
      default:
        return dayExercisesENG;
    }
  }

  static List<String> getNameById(String code) {
    switch (code) {
      case 'uk':
        return exercisesValueUKR;
      case 'ru':
        return exercisesValueRU;
      case 'en':
      default:
        return exercisesValueENG;
    }
  }
}
