import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/color_list.dart';
import 'package:note_app/widgets/constance.dart';
import 'package:sizer/sizer.dart';

class EditListColor extends StatefulWidget {
  const EditListColor({super.key, required this.note});
final NoteModel note ;
  @override
  State<EditListColor> createState() => _EditListColorState();
}

class _EditListColorState extends State<EditListColor> {
    late int currentIndex ;

@override
  void initState(){
  super.initState();
currentIndex = kColorsList.indexOf(Color(widget.note.color));
}
  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: 28.sp * 2.sp,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColorsList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              onTap: () {
                colorIndex = index;
               widget.note.color = kColorsList[index].value;
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