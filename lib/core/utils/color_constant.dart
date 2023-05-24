import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9007f = fromHex('#7f000000');

  static Color gray5001 = fromHex('#fafafa');

  static Color blueGray90019 = fromHex('#192b2b2b');

  static Color black900B2 = fromHex('#b2000000');

  static Color blueGray50 = fromHex('#f1f1f1');

  static Color deepPurpleA10001 = fromHex('#b8abff');

  static Color gray50 = fromHex('#f6f4ff');

  static Color red50 = fromHex('#fff1f1');

  static Color whiteA700Cc = fromHex('#ccffffff');

  static Color black900Dd = fromHex('#dd000000');

  static Color black90000 = fromHex('#00000000');

  static Color black900 = fromHex('#000000');

  static Color blueGray40019 = fromHex('#196a92a9');

  static Color gray50001 = fromHex('#a6a6a6');

  static Color deepPurpleA100 = fromHex('#ab9bff');

  static Color deepPurpleA200 = fromHex('#775cff');

  static Color black90005 = fromHex('#05000000');

  static Color black90026 = fromHex('#26000000');

  static Color deepPurpleA20001 = fromHex('#6a4dff');

  static Color deepPurple5001 = fromHex('#eae6ff');

  static Color black9004c = fromHex('#4c000000');

  static Color gray400 = fromHex('#cacaca');

  static Color deepPurple5003 = fromHex('#e6e1ff');

  static Color gray500 = fromHex('#9c9c9c');

  static Color deepPurple5002 = fromHex('#e9e5ff');

  static Color blueGray400 = fromHex('#888888');

  static Color indigo50 = fromHex('#ddd6ff');

  static Color redA200 = fromHex('#ff5c5c');

  static Color gray900 = fromHex('#121212');

  static Color gray90001 = fromHex('#1a202c');

  static Color gray200 = fromHex('#eeeeee');

  static Color black9000c = fromHex('#0c000000');

  static Color gray300 = fromHex('#e1e1e1');

  static Color blue50 = fromHex('#eef7ff');

  static Color gray30001 = fromHex('#dfdfdf');

  static Color gray100 = fromHex('#f7f7f7');

  static Color gray10003 = fromHex('#f3f3f3');

  static Color deepPurple50 = fromHex('#ebe7ff');

  static Color gray10002 = fromHex('#f4f4f4');

  static Color whiteA70000 = fromHex('#00ffffff');

  static Color deepPurpleA10000 = fromHex('#00ac9bff');

  static Color gray10001 = fromHex('#f5f5f5');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
