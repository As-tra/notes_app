import 'package:flutter/material.dart';
import 'package:note_offline/widgets/custom_serach_icon.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function()? onPressed;
  const CustomAppBar({
    super.key,
    required this.title,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
        const Spacer(),
        CustomAppBarIcon(
          icon: icon,
          onPressed: onPressed,
        ),
      ],
    );
  }
}
