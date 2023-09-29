part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}

final class AddNoteLoadin extends AddNoteState {}

final class AddNoteSuccess extends AddNoteState {}

final class AddNoteFailur extends AddNoteState {
  final String errorMessage ;

  AddNoteFailur({required this.errorMessage});

}
