import 'package:flutter/material.dart';
import 'pages/intro_page.dart';
import 'pages/story_page1.dart';
import 'pages/story_page2.dart';
import 'pages/end_page.dart';

void main() {
  runApp(const HalloweenStorybook());
}

class HalloweenStorybook extends StatelessWidget {
  const HalloweenStorybook({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animated Halloween Storybook',
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color.fromARGB(255, 216, 130, 1),
        scaffoldBackgroundColor: const Color.fromARGB(255, 2, 2, 2),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const IntroPage(),
        '/story1': (context) => const StoryPage1(),
        '/story2': (context) => const StoryPage2(),
        '/end': (context) => const EndPage(),
      },
    );
  }
}
