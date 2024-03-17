import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key, required Widget widget});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
