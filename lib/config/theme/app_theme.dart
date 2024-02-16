import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF491433);
const List<Color> _colorThemes = [
  _customColor,
  Colors.pink,
  Colors.yellow,
  Colors.greenAccent,
  Colors.blue,
  Colors.grey,
  Colors.orange
];

class AppTheme {
  final int selectedColor;
  AppTheme({required this.selectedColor})
      : assert(selectedColor >= 0 && selectedColor < _colorThemes.length,
            'Colors must be between 0 and ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorThemes[selectedColor]);
  }
}
