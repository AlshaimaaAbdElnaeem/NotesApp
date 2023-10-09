import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/constance.dart';

void messageDeletting(BuildContext context, NoteModel note) {
  Widget okButton = Center(
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: kPrimaryColor,
      ),
      child: TextButton(
        child: const Text(
          'Yes',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        onPressed: () {
          note.delete();
          Navigator.pop(context);
          BlocProvider.of<NotesCubit>(context).getAllNotes();
        },
      ),
    ),
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    backgroundColor: Color(note.color),
    content: const Text(
      'Are you sure you want to delete this note ?😟',
      style: TextStyle(
        color: Colors.black,
      ),
    ),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
