import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key , required this.title , required this.icon, this.onPressed});
final String title ;
final IconData icon ;
 final void Function()? onPressed ;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const  EdgeInsets.only(top:40.0),
      child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.normal),
            ),
          CustomSearchIcon(icon:icon, onPressed: onPressed,),
          ],
        ),
    );
  }
}