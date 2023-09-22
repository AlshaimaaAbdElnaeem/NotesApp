import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal:24.0 , vertical: 16),
      child:  Column(children: [
        CustomAppBar(
          title: 'Edit Note',
          icon: Icons.check,
        ),
        SizedBox(height: 16,),
        CustomTextField(textHint: 'Title'),
        CustomTextField(
          textHint: 'Content',
          numberOfLines: 6,
        )
      ]),
    );
  }
}
