import "package:flutter/material.dart";
const colorList =<Color>[
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.yellow,
  Colors.purple,
  Colors.orange,
  Colors.pink,
  Colors.teal,
  Colors.cyan,
  Colors.indigo,
  Colors.amber,
  Colors.lime,
  Colors.brown,
  Colors.grey,
  Colors.blueGrey,
  Colors.black,
  Colors.white
];


class AppTheme{


 final int selectedColor ;

 AppTheme({
  this.selectedColor = 0

  }): assert(
    selectedColor >= 0, 'Selected Color must be greater then 0'),
    assert(
    selectedColor < colorList.length, 
    'Selected Color must be less or equal tha ${colorList.length - 1 }');
  

  ThemeData getTheme()=> ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor], 
    appBarTheme: const AppBarTheme(
      centerTitle: false,
     
    ),
  );

}