import 'package:audioplayers/audioplayers.dart';

class BackgroundMusicController {
  static final _player = AudioPlayer();

  static Future<void> startMusic() async {
    await _player.play(AssetSource('sounds/spooky_theme.mp3'), volume: 0.5);
    _player.setReleaseMode(ReleaseMode.loop);
  }

  static Future<void> stopMusic() async {
    await _player.stop();
  }
}
