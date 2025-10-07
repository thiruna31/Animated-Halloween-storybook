import 'package:flutter/material.dart';

class EndPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "🕷️ The End — Happy Halloween! 🕷️",
          style: TextStyle(fontSize: 26, color: const Color.fromARGB(255, 225, 57, 254)),
        ),
      ),
    );
  }
}
