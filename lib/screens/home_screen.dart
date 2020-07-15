import 'package:flutter/material.dart';
import 'package:new_struct_bloc/screens/body_home_screen.dart';
import 'package:new_struct_bloc/untils/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Row(
        children: [
          Text(
            'WhatsApp',
            style: TextStyle(
                fontSize: dfFontSize * 1.7,
                color: Color.fromRGBO(255, 255, 255, 1)),
          )
        ],
      ),
      actions: [
        IconButton(icon: Icon(Icons.search), onPressed: () {}),
        Container(
          padding: const EdgeInsets.only(right: 15),
          child: DropdownButton(
            underline: Container(width: 0,color: Colors.transparent,),
            icon: Icon(Icons.more_vert,color: Colors.white,),
            items: <String>[
              'New Group',
              'New Broadcast',
              'WhatsApp Web',
              'Startted message',
              'Settings'
            ].map<DropdownMenuItem>((e) {
              return DropdownMenuItem<String>(
                child: Text(e,
                style: TextStyle(color: Colors.black),),
                value: e,
              );
            }).toList(),
            onChanged: (value) {},
          ),
        )
      ],
    );
  }
}
