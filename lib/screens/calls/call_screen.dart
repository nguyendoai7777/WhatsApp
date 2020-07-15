import 'package:flutter/material.dart';
import 'package:new_struct_bloc/untils/constants.dart';

class CallsScreen extends StatefulWidget {
  @override
  _CallsScreenState createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * .73,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'To start calling contacts who have Whatsapp, tap',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: dfFontSize * 1.3,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add_call,
                    color: Colors.grey,
                  ),
                  Text(
                    ' at bottom of your screen.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: dfFontSize * 1.3,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add_call, color: Colors.white),
              backgroundColor: Color.fromRGBO(60, 194, 134, 1),
            ),
          ),
        ),
      ],
    );
  }
}
