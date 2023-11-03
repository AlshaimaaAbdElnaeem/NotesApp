import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ColorList extends StatefulWidget {
  const ColorList({super.key});

  @override
  State<ColorList> createState() => _ColorListState();
}

int colorIndex = 0;

class _ColorListState extends State<ColorList> {
  List<Color> colorList = const [
    Color(0xfffae8e0),
    Color(0xffef7c8e),
    Color(0xffb6e2d3),
    Color(0xffd8a7b1),
    Color(0xffffc2c7),
    Color(0xffb6e5d8),
    Color(0xff8fdde7),
    Color(0xffa49393),
    Color(0xff67595e),
    Color(0xffafe8e0),
    Color(0xffe8b4b8),
    Color(0xfff9f1f0),
    Color(0xfff79489),
    Color(0xfffae8a0),
    Color(0xfffae5e0),
    Color(0xfffaa8e0),
    Color(0xfffee8e0),
    Color(0xfffe98e0),
    Color(0xfffa78e0),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28.sp * 2.sp,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colorList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              onTap: () {
                colorIndex = index;
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                child: ColorItem(
                  isActive: colorIndex == index,
                  color: colorList[index],
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
