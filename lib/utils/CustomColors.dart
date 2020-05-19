import 'dart:ui';

class CustomColors {
  final Color grey = const Color(0xffa9a9a9);
  final Color blue = const Color.fromRGBO(21, 101, 192, 1.0);
  final Color red = const Color.fromRGBO(244, 67, 54, 1.0);
  final Color blue1 = const Color.fromRGBO(33, 150, 243, 1.0);

  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
