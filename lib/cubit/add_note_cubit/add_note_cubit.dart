
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/constance.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color =   const Color(0xfff9f1f0);
  addNote (NoteModel note){
    emit(AddNoteLoadin());
try {
var notesBox = Hive.box <NoteModel>(kNotesBox);
note.color = color.value;
  notesBox.add(note);
  emit(AddNoteSuccess());

} catch (e) {
 emit(AddNoteFailur(errorMessage: e.toString())); 
}
  }
}
