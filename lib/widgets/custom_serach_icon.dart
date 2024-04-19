import 'package:flutter/material.dart';

class CustomAppBarIcon extends StatelessWidget {
  final IconData icon;
  final void Function()? onPressed;
  const CustomAppBarIcon({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white.withOpacity(.05),
      ),
      child: IconButton(
        icon: Icon(
          icon,
          size: 26,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
