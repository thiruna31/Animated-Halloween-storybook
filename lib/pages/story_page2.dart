import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../widgets/spooky_button.dart';
import '../widgets/trap_item.dart';

class StoryPage2 extends StatefulWidget {
  const StoryPage2({super.key});

  @override
  State<StoryPage2> createState() => _StoryPage2State();
}

class _StoryPage2State extends State<StoryPage2> {
  final AudioPlayer _player = AudioPlayer();

  void _onWin(BuildContext context) async {
    await _player.play(AssetSource('sounds/success.mp3'));
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('🎉 You found it!')),
    );
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushNamed(context, '/endpage');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("The Haunted Cabin"),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/cabin.png",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Find the correct pumpkin... but beware the traps!",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.w500,
                      height: 1.4,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 40),
                  Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 30,
                    runSpacing: 30,
                    children: [
                      const TrapItem(imagePath: 'assets/images/bat.png'),
                      const TrapItem(imagePath: 'assets/images/ghost.png'),
                      GestureDetector(
                        onTap: () => _onWin(context),
                        child: Image.asset(
                          'assets/images/pumpkin.png',
                          width: 100,
                        ),
                      ),
                      const TrapItem(imagePath: 'assets/images/spider.png'),
                    ],
                  ),
                  const SizedBox(height: 40),
                  SpookyButton(
                    text: "Back to Forest ←",
                    onPressed: () {
                      Navigator.pop(context);
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
