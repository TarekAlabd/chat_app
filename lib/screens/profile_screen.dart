import 'package:chat_app/widgets/dummy_lists.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  Widget _rowInInformationSection(String key, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          key,
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          value,
          maxLines: 3,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                color: Colors.white10,
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: CircleAvatar(
                          radius: 90,
                          backgroundImage:
                              NetworkImage(DUMMY_PROFILE_USER_DATA[0].imgUrl),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      DUMMY_PROFILE_USER_DATA[0].name,
                      style: TextStyle(color: Colors.white, fontSize: 26),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      DUMMY_PROFILE_USER_DATA[0].title,
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: double.infinity,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  color: Colors.white10,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Personal Information',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                'See more',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        _rowInInformationSection('Name: ', ''),
                        SizedBox(
                          height: 5,
                        ),
                        _rowInInformationSection('Age: ', ''),
                        SizedBox(
                          height: 5,
                        ),
                        _rowInInformationSection('E-mail:', ''),
                        SizedBox(
                          height: 5,
                        ),
                        _rowInInformationSection('Address:', ''),
                        SizedBox(
                          height: 2,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: double.infinity,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  color: Colors.white10,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Experiences',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                'See more',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        _rowInInformationSection('Work As: ', ''),
                        SizedBox(
                          height: 5,
                        ),
                        _rowInInformationSection('Company: ', ''),
                        SizedBox(
                          height: 5,
                        ),
                        _rowInInformationSection('More details:', ''),
                        SizedBox(
                          height: 2,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
