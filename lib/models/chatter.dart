import 'package:flutter/material.dart';

class Chatter {
  final String imgUrl;
  final String username;
  final String lastMsg;
  final bool hasSeen;
  final bool hasUnSeenMsg;
  final int unSeenNum;
  final String lastMsgTime;
  final bool isOnline;

  const Chatter({
    @required this.imgUrl,
    @required this.username,
    @required this.lastMsg,
    @required this.hasSeen,
    @required this.hasUnSeenMsg,
    @required this.unSeenNum,
    @required this.lastMsgTime,
    @required this.isOnline,
  });
}
