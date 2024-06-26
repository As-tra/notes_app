import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_offline/constants.dart';
import 'package:note_offline/cubits/addNoteCubit/add_note_cubit.dart';
import 'package:note_offline/cubits/notesCubit/notes_cubit.dart';
import 'package:note_offline/models/note_model.dart';
import 'package:note_offline/widgets/colors_list_view.dart';
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
            height: 16,
          ),
          const ColorsListView(),
          const SizedBox(
            height: 32,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading,
                text: 'Add',
                onTap: () {
                  if (formeKey.currentState!.validate()) {
                    formeKey.currentState!.save();
                    String month = BlocProvider.of<AddNoteCubit>(context)
                        .months[DateTime.now().month - 1];

                    var note = NoteModal(
                      title: title!,
                      content: subTitle!,
                      date:
                          '$month,${DateTime.now().day} ${DateTime.now().year}',
                      color: kNoteColors[
                              BlocProvider.of<AddNoteCubit>(context).colorIndex]
                          .value,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(note);
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
