import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier{
  bool isLight=true;

  Map <String, Color> textDark= {
  "firstColor" :const Color(0xffE3C278),
    //"firstColor" :Color(0xffAD8E3E),
    "secondaryColor":const Color(0xffDCD2D2),
    "Orange":const  Color(0xffFE693E),
    //"thirdColor":Color(0xff000624),
    "thirdColor":Colors.black,
    "BW":Colors.white,
    "BW12":Colors.white38,
    "BW38":Colors.white54,
    "BW54":Colors.white60,
    "Li":Colors.white,
  };
  Map <String, Object> textLight={
    "firstColor" : const Color(0xff1A2239),
    "secondaryColor": const Color(0xFF9DA9F1),
    "Orange":const  Color(0xffFE693E),
    "thirdColor":Colors.white,
    "BW":Colors.black,
    "BW12":Colors.black12,
    "BW38":Colors.black38,
    "BW54":Colors.black54,
    "Li":Colors.blueGrey,
  };

  changeTheme(bool lan){
    isLight=lan;
    notifyListeners();
  }

  Object? getColor(String txt){
    if(isLight==true) return textLight[txt];
    return textDark[txt];
  }


}