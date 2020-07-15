import 'package:flutter/material.dart';
import 'package:new_struct_bloc/models/Contact_model.dart';
import 'package:new_struct_bloc/screens/chats/chatlist_body.dart';
import 'package:new_struct_bloc/untils/constants.dart';

class ChatList extends StatelessWidget {
  final Contact contact;
  const ChatList({Key key, this.contact}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: buildAppBar(),
      body: ChatBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xff3696e7),
      centerTitle: false,
      title: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              contacts[12].name,
              style: TextStyle(
                color: whiteText,
                fontSize: dfFontSize * 2.0,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Last seen ${contacts[12].lastTimeLogin}',
              style: TextStyle(
                color: whiteText,
                fontSize: dfFontSize * 1.0,
              ),
            ),
          )
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.videocam),
          onPressed: () {},
          color: iconWhite,
        ),
        IconButton(
          icon: Icon(Icons.call),
          onPressed: () {},
          color: iconWhite,
        ),
        IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: () {},
          color: iconWhite,
        )
      ],
    );
  }
}
