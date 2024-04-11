import 'package:flutter/material.dart';
import 'package:note_offline/views/widgets/custom_app_bar.dart';
import 'package:note_offline/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 16,
      ),
      child: Column(
        children: [
          CustomAppBar(),
          SizedBox(
            height: 20,
          ),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
