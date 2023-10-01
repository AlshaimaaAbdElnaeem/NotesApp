
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/constance.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote (NoteModel note){
    emit(AddNoteLoadin());
try {
var notesBox = Hive.box <NoteModel>(kNotesBox);
  notesBox.add(note);
  emit(AddNoteSuccess());

} catch (e) {
 emit(AddNoteFailur(errorMessage: e.toString())); 
}
  }
}
