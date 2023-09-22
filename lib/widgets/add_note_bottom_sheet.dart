import 'package:flutter/material.dart';
import 'package:note_app/widgets/add_bottom.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            CustomTextField(
              textHint: 'Title',
            ),
            CustomTextField(
              textHint: 'Content',
              numberOfLines: 7,
            ),
            SizedBox(
              height: 100,
            ),
            AddBottom(),
          ],
        ),
      ),
    );
  }
}
