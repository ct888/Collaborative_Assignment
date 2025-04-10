import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:google_fonts/google_fonts.dart';

// Program start here
void main() {
  runApp(App());
}

// Paint UI to screen
class App extends StatelessWidget {
  const App({super.key});

  // Rebuild UI
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Hello World'),
        ),
      
        body:ListView.builder(
            itemBuilder: (_, index) {
              Color currentColor = randomColor();
              return Container(
                color: currentColor,
                width: 500,
                height: 500,
                child: Text(
                  randomColor().toString(),
                  style: TextStyle(
                    fontFamily: GoogleFonts.aBeeZee().fontFamily,
                    fontWeight: FontWeight.bold,
                    color: currentColor.computeLuminance() > 0.5 ? Colors.black : Colors.white
                  )
                )
                
              );
            },
        )
      )
    );
  }
  
  Color randomColor() {
    return Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withValues(alpha: 1.0);
  }
}
