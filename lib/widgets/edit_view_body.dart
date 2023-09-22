import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      CustomAppBar(
        title: 'Edit Note',
        icon: Icons.check,
      ),
      CustomTextField(textHint: 'Title'),
      CustomTextField(
        textHint: 'Content',
        numberOfLines: 6,
      )
    ]);
  }
}
