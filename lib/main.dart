import 'package:flutter/material.dart';
// Add this import for TeX support
import 'package:flutter_math_fork/flutter_math.dart';

///hello
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          // Display both plain text and TeX
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hello World!'),
              SizedBox(height: 20),
              Math.tex(
                r'\int_{a}^{b} x^2 dx',
                textStyle: TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
