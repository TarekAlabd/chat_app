import 'package:chat_app/widgets/dummy_lists.dart';
import 'package:flutter/material.dart';

class MessageSent extends StatelessWidget {
  final int i;

  MessageSent(this.i);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Text(
              dummyChattersMessages[i]['time'],
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13
              ),
            ),
          ),
          SizedBox(width: 17,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(right: 7, bottom: 2),
                child: Text(
                  'You',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12
                  ),
                ),
              ),
              Container(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.6,
                ),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                  ),
                ),
                child: Text(
                  dummyChattersMessages[i]['message'],
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
