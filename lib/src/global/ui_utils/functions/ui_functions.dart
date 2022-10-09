import 'package:flutter/material.dart';

abstract class Ui {
  static BorderRadius circularRadius(double radius) => BorderRadius.all(
        Radius.circular(radius),
      );
}
