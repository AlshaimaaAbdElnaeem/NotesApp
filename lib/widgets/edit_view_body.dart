import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/color_list.dart';
import 'package:note_app/widgets/constance.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_field.dart';
import 'package:note_app/widgets/edit_colors_list.dart';
import 'package:sizer/sizer.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
      child: Column(children: [
        CustomAppBar(
          title: 'Edit Note',
          icon: Icons.check,
          onPressed: () {
            widget.note.title = title ?? widget.note.title;
            widget.note.content = content ?? widget.note.content;
            widget.note.color =  widget.note.color ;
            widget.note.save();
             BlocProvider.of<NotesCubit>(context).getAllNotes();
            Navigator.pop(context);
          },
        ),
         SizedBox(
          height: 16.sp,
        ),
        CustomTextField(
          textHint: widget.note.title,
          onChange: (value) {
            title = value;
          },
        ),
        CustomTextField(
          textHint: widget.note.content,
          numberOfLines: 6,
          onChange: (value) {
            content = value;
          },
        ),
              EditListColor(note: widget.note,),

      ]
      ),
    );
  }
}
