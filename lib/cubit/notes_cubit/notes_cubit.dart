import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/constance.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  getAllNotes (){
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
     List <NoteModel>notes =  noteBox.values.toList();
      emit(NotesSucsses(notes: notes));
    } catch (e) {
      emit(NotesFailure(errorMessage: e.toString()));
    }
  }
}
