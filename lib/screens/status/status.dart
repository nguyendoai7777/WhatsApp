import 'package:flutter/material.dart';
import 'package:new_struct_bloc/untils/constants.dart';

class StatusScreen extends StatefulWidget {
  StatusScreen({Key key}) : super(key: key);

  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
          child: ListTile(
            onTap: () {},
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1538031284996-0a5edac64de2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1009&q=80"),
            ),
            title: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'My Status',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: dfFontSize * 1.2,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2),
                    child: Text(
                      'Tap to add status update',
                      style: TextStyle(
                        color: Colors.grey.withOpacity(.6),
                        fontSize: dfFontSize * .9,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 1,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          color: Colors.grey.withOpacity(.3),
          child: Text(
            'Recent update',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black.withOpacity(.8),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
          child: ListTile(
            onTap: () {},
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  "https://image.flaticon.com/icons/png/512/124/124034.png"),
            ),
            title: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 5),
                  child: Text(
                    'Whatsapp',
                    style: TextStyle(color: appbarBgColor),
                  ),
                ),
                Icon(
                  Icons.done,
                  color: Color.fromRGBO(127, 240, 7, 1),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * .4,
          child: Column(),
        ),
        Container(
          padding: const EdgeInsets.only(right: 15),
          child: Align(
            alignment: Alignment.centerRight,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.edit,
                      color: Colors.black,
                    ),
                    backgroundColor: Color.fromRGBO(228, 228, 237, 1).withOpacity(.8),
                    mini: true,
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.white
                  ),
                  backgroundColor: Color.fromRGBO(60, 194, 134, 1),
                )
              ],
            ),
          ),
        ),
        /* SizedBox(
          height: 10,
        ) */
      ],
    );
  }
}
