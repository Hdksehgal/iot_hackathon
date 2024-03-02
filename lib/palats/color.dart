import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

const List<Color> clist = [Color.fromRGBO(247, 201, 101,1), Color.fromRGBO(234, 173, 38, 1),Color.fromRGBO(242, 158, 80, 1),Color.fromRGBO(255, 127, 77, 1)];
const mainFrameColor = Color.fromARGB(255, 255, 246, 233);
const mainFrameColor2 = Color.fromRGBO(247, 201, 101,1);
const mainFrameColor3 = Color.fromRGBO(234, 173, 38, 1);
const mainFrameColor4 = Color.fromRGBO(242, 158, 80, 1);
const mainFrameColor5 = Color.fromRGBO(255, 127, 77, 1);
final themeday = FlexThemeData.light(useMaterial3: true, scheme: FlexScheme.gold);
final themedark = FlexThemeData.dark(useMaterial3: true,scheme: FlexScheme.gold);

//
//
// Container(
// decoration: const BoxDecoration(
// gradient: LinearGradient(
// colors:[mainFrameColor,mainFrameColor2],
// begin: Alignment.topCenter,
// end: Alignment.bottomCenter,
// )
// ),
