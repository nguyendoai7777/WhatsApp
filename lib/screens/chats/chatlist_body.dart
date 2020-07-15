import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';

class ChatBody extends StatefulWidget {
  @override
  _ChatBodyState createState() => _ChatBodyState();
}

class _ChatBodyState extends State<ChatBody> {
  static const bgChatImg =
      "https://static1.squarespace.com/static/5cb06a6cd7456246c1156693/t/5cb86cb1ec212d1aa1ecba63/1555590323971/Whatsapp-Backgrounds-SM.jpg";
  final getChatText = [];
  final chatTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            //image: AssetImage("assets/images/Whatsapp-Backgrounds-SM.jpg"), // local image
            image: NetworkImage(bgChatImg), //internet image
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: getChatText.length,
                itemBuilder: (context, index) {
                  return Bubble(
                    elevation: 3,
                    shadowColor: Colors.blue,
                    alignment: Alignment.centerRight,
                    padding:
                        BubbleEdges.symmetric(horizontal: 15, vertical: 10),
                    margin: BubbleEdges.only(top: 10, right: 3),
                    nip: BubbleNip.rightTop,
                    stick: true,
                    color: Color.fromRGBO(255, 20, 147, 1),
                    child: Text(
                      getChatText[index],
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  );
                },
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, .85),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width * .8,
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.tag_faces),
                          color: Colors.grey.withOpacity(.8),
                          onPressed: () {},
                          iconSize: 21,
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(right: 20),
                            child: TextField(
                              controller: chatTextController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                hintText: 'Type Here',
                                hintStyle: TextStyle(
                                  color: Color.fromRGBO(128, 128, 128, 1),
                                ),
                              ),
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      getChatText.add(chatTextController.text);
                    });
                    chatTextController.text = '';
                  },
                  child: Icon(Icons.send),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
