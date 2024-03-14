import 'package:appbanhang/login_prompt.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 8, 179, 179),
                Color.fromARGB(255, 31, 178, 214),
                Color.fromARGB(115, 15, 194, 218),
                Color.fromARGB(192, 235, 124, 33),
                Color.fromARGB(255, 236, 132, 35),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const LoginPrompt(),
        ),
      ),
    );
  }
}
