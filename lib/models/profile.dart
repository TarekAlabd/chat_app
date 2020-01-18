import 'package:flutter/material.dart';

class Profile {
  final String name;
  final String imgUrl;
  final String title;
  final String email;
  final double age;
  final String address;
  final String workAs;
  final String workAt;
  final String moreAboutWork;

  const Profile({
    @required this.name,
    @required this.imgUrl,
    @required this.title,
    @required this.email,
    @required this.age,
    @required this.address,
    @required this.workAs,
    @required this.workAt,
    @required this.moreAboutWork,
  });
}
