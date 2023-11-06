import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/add_bottom.dart';
import 'package:note_app/widgets/color_list.dart';
import 'package:note_app/widgets/custom_text_field.dart';
import 'package:sizer/sizer.dart';

class AddNewNote extends StatefulWidget {
  const AddNewNote({
    super.key,
  });

  @override
  State<AddNewNote> createState() => _AddNewNoteState();
}

class _AddNewNoteState extends State<AddNewNote> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: Column(
        children: [
          CustomTextField(
            textHint: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          CustomTextField(
            textHint: 'Content',
            numberOfLines: 7, 
            onSaved: (value) {
              subTitle = value;
            },
          ),
           SizedBox(
            height: 15.sp,
          ),
              const ColorList(),
          AddBottom(onTap: () {
            if (formKey.currentState!.validate()) {
              var currentDate = DateTime.now();
              var formattedCurrentDate = DateFormat('LLLL dd,yyyy').format(currentDate).toString();
              formKey.currentState!.save();
              var note = NoteModel(
                title: title!,
                content: subTitle!,
                color: BlocProvider.of<AddNoteCubit>(context).color.value,
                date:formattedCurrentDate,
              );
              BlocProvider.of<AddNoteCubit>(context).addNote(note);
            } else {
              autovalidateMode = AutovalidateMode.always;
            }
          }),
        ],
      ),
    );
  }
}

