import 'package:flutter/material.dart';

class CustomAppBarIcon extends StatelessWidget {
  final IconData icon;
  const CustomAppBarIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white.withOpacity(.05),
      ),
      child: Icon(
        icon,
        size: 28,
      ),
    );
  }
}
