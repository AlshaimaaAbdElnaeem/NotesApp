import 'package:flutter/material.dart';
import 'package:note_app/widgets/constance.dart';

class AddBottom extends StatelessWidget {
  const AddBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: kPrimaryColor,
      ),
      child: const Center(
          child: Text(
        'Add',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
      )),
    );
  }
}
