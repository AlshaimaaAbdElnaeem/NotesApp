import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24,bottom: 24),
      decoration: BoxDecoration(
        color: Color(0xffFCCA7D),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Flutter tips',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
            
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Text(
                'Build your Career with Tharwat Samy',
                style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 20),
                
              ),
            ),
            trailing: IconButton( onPressed: (){} ,icon: Icon(FontAwesomeIcons.trash, color: Colors.black,)),
          ),
          Padding(
            padding: const EdgeInsets.only(right:24.0 , top: 24,),
            child: Text('May 21,2022' , style: TextStyle(color:Colors.black.withOpacity(0.4), fontSize: 14, ),),
          ),
        ],
      ),
    );
  }
}
