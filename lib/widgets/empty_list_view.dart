import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

class EmptyListView extends StatelessWidget {
  const EmptyListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height / 4),
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
