import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class EmptyListView extends StatelessWidget {
  const EmptyListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Start your first note! What’s on your mind?",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        Lottie.asset(
          'assets/animations/empty.json',
          repeat: false,
        ),
      ],
    );
  }
}
