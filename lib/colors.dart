/// constants { colours, ...}
///
/// @ George this is how you're going to add colors to the project, so you can edit it from here
///
/// In case your colors are in Hex, I'm gonna import Hexcolor package for you to use here

import 'dart:ui';
import 'package:hexcolor/hexcolor.dart';

class AppColors{

  /// if you're using HexColor
  static  Color mainColor =  HexColor('#732424');
  static const Color textColor = Color(0xFFccc7c5);
  static const Color iconColor1 = Color(0xFFffd28d);
  static const Color iconColor2 = Color(0xFFfcab88);
  static const Color paraColor = Color(0xFF8f837f);
  static const Color buttonBackgroundColor = Color(0xFFf7f6f4);
  static const Color signColor = Color(0xFFa9a29f);
  static const Color titleColor = Color(0xFF5c524f);
  static const Color mainBlackColor = Color(0xFF332d2b);
  static const Color yellowColor = Color(0xFFffd379);

}