import 'package:flutter/material.dart';

class AnimatedGhost extends StatefulWidget {
  final double size;

  const AnimatedGhost({super.key, this.size = 120});

  @override
  State<AnimatedGhost> createState() => _AnimatedGhostState();
}

class _AnimatedGhostState extends State<AnimatedGhost>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0, end: 25).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (_, child) => Transform.translate(
        offset: Offset(0, _animation.value),
        child: Image.asset('assets/images/ghost.png', width: widget.size),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
