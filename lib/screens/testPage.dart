import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:login/res/custom_colors.dart';
import 'package:login/database/database.dart';
import 'package:intl/intl.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity/connectivity.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/material.dart';

class TesPage extends StatefulWidget {
  const TesPage({Key? key, required User user})
      : _user = user,
        super(key: key);

  final User _user;

  @override
  _TesPageState createState() => _TesPageState();
}

class _TesPageState extends State<TesPage> {
  late User _user;
  Map data = {};
  var newDt = DateFormat.yMMMEd().format(DateTime.now());
  List userProfilesList = [];

  _launchURL() async {
    const url =
        'https://flutterforyou.com/how-to-open-url-in-external-browser-in-flutter/';

    launch(url);
  }

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget._user.displayName!,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        child: Center(
            child: Column(
          children: <Widget>[
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  CustomColors.firebaseOrange,
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              onPressed: () {
                if (userProfilesList[0]["Update"] == false) {
                  print("O ya");
                } else {
                  print("o no no ");
                }
              },
              child: Padding(
                padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                child: Text(
                  'TEST',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: CustomColors.firebaseGrey,
                    letterSpacing: 2,
                  ),
                ),
              ),
            ),
            Text("Hello")
          ],
        )),
      ),
    );
  }
}
