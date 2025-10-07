import 'package:flutter/material.dart';

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
            Text("You walk into a dark forest... something moves!"),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/story2'),
              child: Text("Continue →"),
            ),
          ],
        ),
      ),
    );
  }
}
