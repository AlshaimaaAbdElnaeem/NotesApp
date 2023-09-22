import 'package:flutter/material.dart';
import 'package:note_app/widgets/constance.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.textHint, this.numberOfLines = 1});
  final String textHint;
  final int numberOfLines;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
      ),
      child: TextField(
        maxLines: numberOfLines,
        decoration: InputDecoration(
          hintText: textHint,
          hintStyle: const TextStyle(
            color:kPrimaryColor,
          ),
          focusedBorder: buildBorder(kPrimaryColor),
          enabledBorder: buildBorder(),
          border:buildBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return  OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
            borderSide: BorderSide(
              color: color?? Colors.white,
            ));
  }
}
