import 'package:chat_app/widgets/dummy_lists.dart';
import 'package:chat_app/widgets/message_received.dart';
import 'package:chat_app/widgets/message_sent.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  static const routeName = '/chat-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        iconTheme: IconThemeData(color: Colors.white),
        title: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage(DUMMY_CHATTERS_LIST[0].imgUrl),
            ),
            SizedBox(
              width: 13,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  DUMMY_CHATTERS_LIST[0].username,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 3,),
                DUMMY_CHATTERS_LIST[0].isOnline
                    ? Text(
                        'Online',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      )
                    : Text('Offline', style: TextStyle(fontSize: 12, color: Colors.grey),),
              ],
            )
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.call,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.videocam,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.all(17.0),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: ListView.builder(
                          itemCount: dummyChattersMessages.length,
                          itemBuilder: (_, i) {
                            if (dummyChattersMessages[i]['status'] == messageType.received) {
                              return MessageReceived(i);
                            } else {
                              return MessageSent(i);
                            }
                          },
                      ),
                    ),
                    Container(
                      height: 62,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(34),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 2,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                              child: Row(
                                children: <Widget>[
                                  IconButton(icon: Icon(Icons.insert_emoticon, color: Colors.black54,), onPressed: () {},),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Type Something.....',
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                  IconButton(icon: Icon(Icons.camera_alt, color: Colors.black54,), onPressed: () {},),
                                  IconButton(icon: Icon(Icons.attach_file, color: Colors.black54,), onPressed: () {},),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 15,),
                          Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                            child: GestureDetector(
                              child: Icon(
                                Icons.keyboard_voice,
                                color: Colors.white,
                              ),
                              onLongPress: () {

                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }
}
