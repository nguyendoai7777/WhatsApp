import 'package:flutter/material.dart';
import 'package:new_struct_bloc/models/Contact_model.dart';
import 'package:new_struct_bloc/screens/calls/call_screen.dart';
import 'package:new_struct_bloc/screens/chats/chat_screen.dart';
import 'package:new_struct_bloc/screens/status/status.dart';
import 'package:new_struct_bloc/untils/constants.dart';

class Body extends StatefulWidget {
  // var fullWidth = MediaQuery.of(context).size.width;
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var layout = 'chats';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: new BoxDecoration(color: appbarBgColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(
                  Icons.camera_alt,
                  color: Colors.white.withOpacity(.6),
                ),
                onPressed: () {},
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 2,
                      color: Colors.white,
                    ),
                  ),
                ),
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      layout = 'chats';
                    });
                  },
                  child: Container(
                    child: Text(
                      'Chats',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(255, 0255, 0255, 01),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 2,
                      color: Colors.transparent,
                    ),
                  ),
                ),
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      layout = 'status';
                    });
                  },
                  child: Container(
                    child: Text(
                      'Status',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(255, 0255, 0255, 01),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 2,
                      color: Colors.transparent,
                    ),
                  ),
                ),
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      layout = 'calls';
                    });
                  },
                  child: Container(
                    child: Text(
                      'Calls',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(255, 0255, 0255, 01),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        //ItemContact()
        layout == 'chats'
            ? Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (item, index) => ItemContact(
                    contact: contacts[index],
                  ),
                  itemCount: contacts.length,
                ),
              )
            : (layout == 'status') ? StatusScreen() : CallsScreen()
      ],
    );
  }
}

class ItemContact extends StatelessWidget {
  static const roseAvater =
      "https://cf.shopee.vn/file/a2f1755308884a6e097e2d354bf32734";
  static const bgItemContact = "https://i.redd.it/qwd83nc4xxf41.jpg";
  final Contact contact;
  const ItemContact({
    Key key,
    this.contact,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7, horizontal: 0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Colors.grey.withOpacity(.5),
          ),
        ),
        image: DecorationImage(
          image: NetworkImage(bgItemContact),
          fit: BoxFit.cover,
        ),
      ),
      child: ListTile(
        onTap: () {
          Route route = MaterialPageRoute(
            builder: (context) => ChatList(),
          );
          Navigator.push(context, route);
        },
        leading: CircleAvatar(
          backgroundImage: NetworkImage(roseAvater),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                contact.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 7, left: 0),
              child: Text(
                contact.phoneNumber,
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromRGBO(0, 0, 0, .6),
                ),
                textAlign: TextAlign.left,
              ),
            )
          ],
        ),
        trailing: Icon(Icons.ac_unit),
      ),
    );
  }
}

/* 
class Actions extends StatefulWidget {
  @override
  _ActionsState createState() => _ActionsState();
}

class _ActionsState extends State<Actions> {
  List<String> actions = ["Chats", 'Status', 'Calls'];
  int actionIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: actions.length,
          itemBuilder: (item, index) => Text(
                actions[index],
                style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
              )),
    );
  }
}
 */
