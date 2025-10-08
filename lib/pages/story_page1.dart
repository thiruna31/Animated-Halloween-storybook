import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../widgets/spooky_button.dart';
import '../widgets/animated_ghost.dart';
import '../widgets/floating_bat.dart';
import '../widgets/background_music_controller.dart';

class StoryPage1 extends StatefulWidget {
  const StoryPage1({super.key});

  @override
  State<StoryPage1> createState() => _StoryPage1State();
}

class _StoryPage1State extends State<StoryPage1> {
  final AudioPlayer _player = AudioPlayer();

  @override
  void initState() {
    super.initState();
    BackgroundMusicController.startMusic();
  }

  @override
  void dispose() {
    BackgroundMusicController.stopMusic();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text("The Spooky Forest"),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/forest.png",
              fit: BoxFit.cover,
            ),
          ),
          const Positioned(
            top: 150,
            left: 60,
            child: AnimatedGhost(size: 120),
          ),
          const Positioned(
            top: 80,
            right: 40,
            child: FloatingBat(top: 80, left: 0),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "You walk into a dark forest... something moves!",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.w500,
                      height: 1.4,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  SpookyButton(
                    text: "Continue →",
                    onPressed: () {
                      Navigator.pushNamed(context, '/story2');
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
