import 'dart:ui';

class Hex {
  Color toColor;
  Hex(String code) {
    this.toColor =
        new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
