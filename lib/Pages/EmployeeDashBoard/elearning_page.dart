import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final User user = _auth.currentUser;

class EmployeeElearningPage extends StatefulWidget {
  @override
  _EmployeeElearningPageState createState() => _EmployeeElearningPageState();
}

class _EmployeeElearningPageState extends State<EmployeeElearningPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f6fd),
      body: StreamBuilder<DocumentSnapshot>(
        stream: FirebaseFirestore.instance
            .collection('Employees')
            .doc(user.uid)
            .snapshots(),
        builder:
            (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else if (snapshot.hasData) {
            return Container(
              padding: EdgeInsets.only(top: 40, left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Hello ${snapshot.data['name']}",
                        style:
                            TextStyle(fontSize: 20, color: Colors.blueAccent),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/img/profilePic.png'))),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'What do you \nwant to \nlearn today?',
                    style: TextStyle(
                        fontSize: 35, height: 1.3, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  InkWell(
                                    child: courseWidget(
                                        'LSS/Q2501',
                                        'Stiching Operator Footwear',
                                        'img1',
                                        Color(0xffff6a65),
                                        Color(0xffff5954)),
                                    onTap: () {
                                    },
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  InkWell(
                                    child: courseWidget(
                                        'LSS/Q5501',
                                        'Stiching Operator Goods & Garments',
                                        'img2',
                                        Color(0xffe9eefa),
                                        Colors.white),
                                    onTap: () {
                                      
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                              child: Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                SizedBox(
                                  height: 50,
                                ),
                                InkWell(
                                  child: courseWidget(
                                      'LSS/Q25301',
                                      'Cutting Operator Footwear',
                                      'img3',
                                      Color(0xffe9eefa),
                                      Colors.white),
                                  onTap: () {
                                   
                                  },
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                InkWell(
                                  child: courseWidget(
                                      'LSS/Q3501',
                                      'Cutting Operator Goods & Garments',
                                      'img4',
                                      Color(0xffbdcddfa),
                                      Color(0xffcedaff)),
                                  onTap: () {
                                   
                                  },
                                ),
                              ],
                            ),
                          ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
          return LinearProgressIndicator();
        },
      ),
    );
  }

  Container courseWidget(String category, String title, String img,
      Color categoryColor, Color bgColor) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: categoryColor,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Text(
              '$category',
              style: TextStyle(
                  color: (categoryColor == Color(0xffe9eefa)
                      ? Color(0xff2657ce)
                      : Colors.white)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '$title',
            style: TextStyle(
              color:
                  (bgColor == Color(0xffff5954)) ? Colors.white : Colors.black,
              fontSize: 16,
              height: 1,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Container(
                height: 5,
                width: 100,
                color: (bgColor == Color(0xffff5954))
                    ? Colors.red
                    : Color(0xff2657ce),
              ),
              Expanded(
                child: Container(
                  height: 5,
                  color: (bgColor == Color(0xffff5954))
                      ? Colors.white.withOpacity(0.5)
                      : Color(0xff2657ce).withOpacity(0.5),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Hero(
            tag: '$img',
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/img/$img.png'),
              )),
            ),
          )
        ],
      ),
    );
  }

  void openCoursePage(String img, String title) {
    Navigator.pushNamed(context, '/coursePage',
        arguments: {'img': '$img', 'title': '$title'});
  }
}
