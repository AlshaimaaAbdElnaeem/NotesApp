import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12,),
      child: ListView.builder(
        padding:const EdgeInsets.all(0),
        itemBuilder: (context ,index ){
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 4),
          child: CustomNoteItem(),
        );
      }),
    );
  }
}