import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/constance.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>?notes ;
  getAllNotes (){
  var noteBox = Hive.box<NoteModel>(kNotesBox);
   notes =  noteBox.values.toList();
   emit(NotesSucsses());
}
}
