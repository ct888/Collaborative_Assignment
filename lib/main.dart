import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:seek_here/View/login.dart';

// Program start here
void main() {
  runApp(LogIn());
}

// Paint UI to screen
class App extends StatelessWidget {
  const App({super.key});


 
  Color randomColor() {
    return Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withValues(alpha: 1.0);
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp();
  }
}
