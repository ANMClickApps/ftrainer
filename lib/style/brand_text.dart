import 'package:flutter/material.dart';
import 'package:ftrainer/style/brand_color.dart';

class BrandText {
  //Day card
  static const TextStyle dayTextTitle = TextStyle(
    color: BrandColor.cardDayText,
    fontSize: 17.0,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle dayTextNumber = TextStyle(
    color: BrandColor.cardDayText,
    fontSize: 28.0,
    fontWeight: FontWeight.bold,
    height: 1.3,
  );
  static const TextStyle dayTextTitleActive = TextStyle(
    color: Colors.white,
    fontSize: 17.0,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle dayTextNumberActive = TextStyle(
    color: Colors.white,
    fontSize: 28.0,
    fontWeight: FontWeight.bold,
    height: 1.3,
  );
  static const TextStyle textDay = TextStyle(
    color: BrandColor.exerciseText,
    fontSize: 13.0,
    fontWeight: FontWeight.w500,
    height: 1.3,
  );
  static const TextStyle textDayWhite = TextStyle(
    color: Colors.white,
    fontSize: 13.0,
    fontWeight: FontWeight.w500,
    height: 1.3,
  );
  static const TextStyle textDayTitle = TextStyle(
    color: Colors.white,
    fontSize: 28.0,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle textDayDesc = TextStyle(
    color: BrandColor.exerciseText,
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    height: 1.3,
  );
  static const TextStyle exCardTitle = TextStyle(
    fontSize: 28.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  static TextStyle exCardSubTitle = TextStyle(
    color: Colors.black.withOpacity(0.3),
    fontSize: 17.0,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle exCardDay = TextStyle(
    color: Colors.black,
    fontSize: 17.0,
    fontWeight: FontWeight.normal,
  );
  static const TextStyle exDetailTitle = TextStyle(
    color: Colors.white,
    fontSize: 17.0,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle tabTitle = TextStyle(
    color: BrandColor.primary3,
    fontSize: 17.0,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle tabTitleActive = TextStyle(
    color: Colors.white,
    fontSize: 17.0,
    fontWeight: FontWeight.w700,
  );
  static TextStyle tabDescription = TextStyle(
    color: Colors.black.withOpacity(0.75),
    fontSize: 17.0,
    fontWeight: FontWeight.normal,
    height: 1.3,
  );
  static TextStyle tabCount = TextStyle(
    color: Colors.black.withOpacity(0.75),
    fontSize: 17.0,
    fontWeight: FontWeight.w500,
    height: 1.3,
  );
  static const TextStyle tabStart = TextStyle(
    color: BrandColor.primary,
    fontSize: 20.0,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle resultTable = TextStyle(
    color: Colors.black,
    fontSize: 17.0,
    fontWeight: FontWeight.w600,
  );
}
