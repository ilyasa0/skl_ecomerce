// Place fonts/customicon.ttf in your fonts/ directory and
// add the following to your pubspec.yaml
// flutter:
//   fonts:
//    - family: customicon
//      fonts:
//       - asset: fonts/customicon.ttf
import 'package:flutter/widgets.dart';

class CustomIcon {
  CustomIcon._();

  static const String _fontFamily = 'CustomIcon';

  static const IconData home = IconData(0xe905, fontFamily: _fontFamily);
  static const IconData cart = IconData(0xe93a, fontFamily: _fontFamily);
  static const IconData search = IconData(0xe986, fontFamily: _fontFamily);
  static const IconData menu = IconData(0xe9bd, fontFamily: _fontFamily);
  static const IconData bookmark = IconData(0xe9d2, fontFamily: _fontFamily);
}
