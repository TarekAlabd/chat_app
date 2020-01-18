import 'package:chat_app/widgets/chatters_list.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
//      appBar: AppBar(
//        backgroundColor: Colors.white,
//        title: Text(
//          'Chatting',
//          style: TextStyle(
//            color: Colors.black54,
//          ),
//        ),
//        actions: <Widget>[
//          IconButton(
//            icon: Icon(
//              Icons.search,
//              color: Colors.black54,
//            ),
//            onPressed: () {},
//          ),
//          IconButton(
//            icon: Icon(
//              Icons.add,
//              color: Colors.black54,
//            ),
//            onPressed: () {},
//          ),
//        ],
//      ),
//      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//      floatingActionButton: FloatingActionButton(
//        elevation: 5,
//        backgroundColor: Colors.blue,
//        child: Icon(Icons.video_call),
//        onPressed: () {},
//      ),
//      bottomNavigationBar: BottomAppBar(
//        shape: CircularNotchedRectangle(),
//        notchMargin: 7.0,
//        child: Row(
//          mainAxisSize: MainAxisSize.max,
//          mainAxisAlignment: MainAxisAlignment.spaceAround,
//          children: <Widget>[
//            IconButton(
//              icon: Icon(
//                Icons.message,
//                color: Colors.black54,
//              ),
//              onPressed: () {},
//            ),
//            Padding(
//              padding: const EdgeInsets.only(right: 30),
//              child: IconButton(
//                icon: Icon(
//                  Icons.feedback,
//                  color: Colors.black54,
//                ),
//                onPressed: () {},
//              ),
//            ),
//            IconButton(
//              icon: Icon(
//                Icons.call,
//                color: Colors.black54,
//              ),
//              onPressed: () {},
//            ),
//            IconButton(
//              icon: Icon(
//                Icons.supervisor_account,
//                color: Colors.black54,
//              ),
//
//              onPressed: () {},
//            ),
//          ],
//        ),
//      ),
      body: ChattersList(),
    );
  }
}
