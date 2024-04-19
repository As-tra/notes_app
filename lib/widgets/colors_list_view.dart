import 'package:flutter/material.dart';
import 'package:note_offline/constants.dart';
import 'package:note_offline/widgets/color_item.dart';

class ColorsListView extends StatelessWidget {
  const ColorsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 78,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kNoteColors.length,
        itemBuilder: (context, index) {
          return ColorItem(
            color: kNoteColors[index],
          );
        },
      ),
    );
  }
}
