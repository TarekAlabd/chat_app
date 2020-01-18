import 'package:chat_app/screens/chat_screen.dart';
import 'package:chat_app/screens/tabs_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabsScreen(),
      routes: {
        ChatScreen.routeName: (_) => ChatScreen(),
      },
    );
  }
}
