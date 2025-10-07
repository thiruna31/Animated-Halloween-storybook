import 'package:flutter/material.dart';
import 'pages/intro_page.dart';
import 'pages/story_page1.dart';
import 'pages/story_page2.dart';
import 'pages/end_page.dart';

void main() => runApp(HalloweenStorybook());

class HalloweenStorybook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animated Halloween Storybook',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.orange,
        scaffoldBackgroundColor: Colors.black,
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => IntroPage(),
        '/story1': (_) => StoryPage1(),
        '/story2': (_) => StoryPage2(),
        '/end': (_) => EndPage(),
      },
    );
  }
}
