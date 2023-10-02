part of 'notes_cubit.dart';

sealed class NotesState {}

final class NotesInitial extends NotesState {}
final class NotesSucsses extends NotesState {
  final List<NoteModel> notes ;

  NotesSucsses({required this.notes});
}
final class NotesFailure extends NotesState {
 final String errorMessage ;

  NotesFailure({required this.errorMessage});
}