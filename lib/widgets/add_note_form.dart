import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_offline/cubits/addNoteCubit/add_note_cubit.dart';
import 'package:note_offline/models/note_model.dart';
import 'package:note_offline/widgets/custom_button.dart';
import 'package:note_offline/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formeKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formeKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            onsaved: (p0) {
              title = p0;
            },
            hintText: 'Title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            hintText: 'content',
            numOfLines: 5,
            onsaved: (p0) {
              subTitle = p0;
            },
          ),
          const SizedBox(
            height: 32,
          ),
          CustomButton(
            text: 'Add',
            onTap: () {
              if (formeKey.currentState!.validate()) {
                formeKey.currentState!.save();
                var note = NoteModal(
                  title: title!,
                  content: subTitle!,
                  date: DateTime.now().toString(),
                  color: Colors.blue.value,
                );

                BlocProvider.of<AddNoteCubit>(context).addNote(note);
              } else {
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
