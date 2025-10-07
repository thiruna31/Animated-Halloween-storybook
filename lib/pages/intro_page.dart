import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("🎃 Welcome to the Haunted Storybook 🎃",
                style: TextStyle(fontSize: 26, color: Colors.orange)),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/story1'),
              child: Text("Start Story"),
            ),
          ],
        ),
      ),
    );
  }
}
