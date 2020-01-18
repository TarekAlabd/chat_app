import 'package:chat_app/screens/chat_screen.dart';
import 'package:chat_app/widgets/dummy_lists.dart';
import 'package:flutter/material.dart';

class ChattersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: DUMMY_CHATTERS_LIST.length,
        itemBuilder: (_, i) {
          return Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  onLongPress: () {},
                  onTap: () {
                    Navigator.of(context).pushNamed(ChatScreen.routeName);
                  },
                  leading: Stack(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage:
                            NetworkImage(DUMMY_CHATTERS_LIST[i].imgUrl),
                      ),
                      DUMMY_CHATTERS_LIST[i].isOnline == true
                          ? Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                                shape: BoxShape.circle,
                                color: Colors.green,
                              ))
                          : Container(
                              height: 0,
                              width: 0,
                            ),
                    ],
                  ),
                  title: Text(DUMMY_CHATTERS_LIST[i].username, style: TextStyle(color: Colors.white),),
                  subtitle: Text(DUMMY_CHATTERS_LIST[i].lastMsg, style: TextStyle(color: Colors.white70, fontSize: 13),),
                  trailing: Container(
                    padding: const EdgeInsets.only(top: 15),
                    child: Column(
                      children: <Widget>[
                        Text(
                          DUMMY_CHATTERS_LIST[i].lastMsgTime,
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        DUMMY_CHATTERS_LIST[i].hasUnSeenMsg
                            ? Container(
                                alignment: Alignment.center,
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                ),
                                child: Text(
                                  DUMMY_CHATTERS_LIST[i].unSeenNum
                                      .toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                  ),
                                ),
                              )
                            : Container(
                                height: 0,
                                width: 0,
                              ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.white12,
              ),
            ],
          );
        });
  }
}
