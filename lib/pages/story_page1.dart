import 'package:flutter/material.dart';
import '../widgets/spooky_button.dart';

class StoryPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("The Spooky Forest")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/forest.png", width: 210),
            SizedBox(height: 16),
            Text(
              "You walk into a dark forest... something moves!",
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 32),
            SpookyButton(
              text: "Continue →",
              onPressed: () {
                Navigator.pushNamed(context, '/story2');
              },
            ),
          ],
        ),
      ),
    );
  }
}
