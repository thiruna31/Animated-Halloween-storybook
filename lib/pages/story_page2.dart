import 'package:flutter/material.dart';
import '../widgets/spooky_button.dart';

class StoryPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("The Haunted Cabin")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/cabin.png", width: 210),
            SizedBox(height: 16),
            Text(
              "You arrive at an old cabin... the door creaks open!",
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 32),
            SpookyButton(
              text: "Continue →",
              onPressed: () {
                Navigator.pushNamed(context, '/endpage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
