import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/widgets/constance.dart';

class AddBottom extends StatelessWidget {
  const AddBottom({
    super.key,
    required this.onTap,
  });
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kPrimaryColor,
        ),
        child: Center(child: BlocBuilder<AddNoteCubit, AddNoteState>(
          builder: (context, state) {
            return state is AddNoteLoadin
                ? const SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(color: Colors.black))
                : const Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  );
          },
        )),
      ),
    );
  }
}
