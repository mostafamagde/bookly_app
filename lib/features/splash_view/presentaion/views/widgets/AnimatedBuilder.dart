import 'package:flutter/material.dart';

class AnimationBuilder extends StatelessWidget {
  const AnimationBuilder({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (context, _) {
        return const Text(
          "Read Free Books",
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center,
        );
      },
      animation: slidingAnimation,
    );
  }
}
