import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/widgets/constance.dart';
import 'package:sizer/sizer.dart';

class ColorList extends StatefulWidget {
  const ColorList({super.key});

  @override
  State<ColorList> createState() => _ColorListState();
}

int colorIndex = 0;

class _ColorListState extends State<ColorList> {
 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28.sp * 2.sp,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColorsList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              onTap: () {
                colorIndex = index;
                BlocProvider.of<AddNoteCubit>(context).color = kColorsList[index];
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                child: ColorItem(
                  isActive: colorIndex == index,
                  color: kColorsList[index],
                ),
              ));
        },
      ),
    );
  }
}

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 32.sp,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 28.sp,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 28.sp,
            backgroundColor: color,
          );
  }
}
