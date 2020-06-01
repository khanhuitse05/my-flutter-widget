import 'dart:io';

import 'package:flutter/material.dart';

const double defaultPadding = 16;

IconData get iconBack {
  if (Platform.isIOS) {
    return Icons.arrow_back_ios;
  } else {
    return Icons.arrow_back;
  }
}

// ignore: avoid_classes_with_only_static_members
class AppStyles {
  static const List<BoxShadow> boxShadow = <BoxShadow>[
    BoxShadow(
      color: Color(0xFFC4C4C4),
      offset: Offset(1, 4),
      blurRadius: 5,
    ),
  ];

  static const Color blue = Color(0xFF0087F0);
  static const Color green = Color(0xFF32D57A);
  static const Color orange = Color(0xFFFEA201);
  static const Color purple = Color(0xFF7988FD);
  static const Color red = Color(0xFFE96447);

  static const Color bluePastel = Color(0xFFEDF7FE);
  static const Color greenPastel = Color(0xFFEBFBF2);
  static const Color orangePastel = Color(0xFFFFF6E6);
  static const Color purplePastel = Color(0xFFF2F3FF);
  static const Color redPastel = Color(0xFFFFEBEE);
  static Color colorLoop(int index) {
    switch (index % 5) {
      case 0:
        return blue;
      case 1:
        return green;
      case 2:
        return orange;
      case 3:
        return red;
      default:
        return purple;
    }
  }

  static Color colorLoopPastel(int index) {
    switch (index % 5) {
      case 0:
        return bluePastel;
      case 1:
        return greenPastel;
      case 2:
        return orangePastel;
      case 3:
        return redPastel;
      default:
        return purplePastel;
    }
  }
}
