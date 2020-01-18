import 'package:chat_app/widgets/dummy_lists.dart';
import 'package:flutter/material.dart';

class MessageReceived extends StatelessWidget {
  final int i;
  MessageReceived(this.i);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage(dummyChattersMessages[i]['contactImgUrl']),
        ),
        SizedBox(width: 7,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 2),
              child: Text(
                dummyChattersMessages[i]['contactName'],
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13
                ),
              ),
            ),
            Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.6,
              ),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xfff9f9f9),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25),
                ),
              ),
              child: Text(
                dummyChattersMessages[i]['message'],
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
        SizedBox(width: 17,),
        Text(
          dummyChattersMessages[i]['time'],
          style: TextStyle(
            color: Colors.grey,
            fontSize: 13
          ),
        ),
      ],
    );
  }
}
