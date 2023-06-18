import 'package:flutter/material.dart';

extension ThemingExtension on BuildContext{
  get t => Theme.of(this).textTheme;

}