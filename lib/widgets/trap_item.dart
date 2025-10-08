import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class TrapItem extends StatelessWidget {
  final String imagePath;

  const TrapItem({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final player = AudioPlayer();
        player.play(AssetSource('sounds/jumpscare.mp3'));
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('💀 You touched the wrong item!'),
            duration: Duration(seconds: 1),
          ),
        );
      },
      child: Image.asset(imagePath, width: 100),
    );
  }
}
