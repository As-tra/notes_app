import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  final String title;
  final String text;
  final Color color;
  final String date;
  const NoteItem({
    super.key,
    required this.title,
    required this.text,
    required this.color,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.all(0),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.trash,
                size: 26,
                color: Colors.black,
              ),
            ),
            subtitle: Text(
              text,
              style: const TextStyle(
                color: Colors.black45,
                fontSize: 18,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                date,
                style: const TextStyle(
                  color: Colors.black38,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
