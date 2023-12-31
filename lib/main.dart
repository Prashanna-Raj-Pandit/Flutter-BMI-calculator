import 'package:flutter/material.dart';
import 'inputpage.dart';
void main() => runApp(BMICalculator());
class BMICalculator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF6A71B2),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        appBarTheme: AppBarTheme(color:Color(0xFF0A0E21)
      )),
      home: InputPage(),
    );
  }
}


