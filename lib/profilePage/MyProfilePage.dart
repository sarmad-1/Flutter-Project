import 'package:flutter/material.dart';
import 'package:myproject/coustmWidgets/appbar.dart';
import 'package:myproject/coustmWidgets/buttons.dart';
import 'package:myproject/coustmWidgets/dataBar.dart';
import 'package:myproject/coustmWidgets/tabs.dart';
import 'package:myproject/coustmWidgets/tabsContent.dart';
import 'package:myproject/coustmWidgets/profile.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  MyProfileState createState() => MyProfileState();
}

class MyProfileState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: myAppBar(context),
        backgroundColor: Color(0xff09031d),
        body: Center(
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(height: 10),
              Profile(),
              SizedBox(height: 15),
              userInfo(),
              SizedBox(height: 24),
              dataBar(),
              SizedBox(height: 24),
              Buttons(),
              SizedBox(height: 24),
              Tabs(
                text: 'Recent Prodcast',
                text2: 'Highlight & Uplods',
              ),
              SizedBox(height: 10),
              TabContent(),
            ]),
          ),
        ),
      ),
    );
  }
}

Widget userInfo() => Column(
      children: const [
        Text(
          '@Sarmad',
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        SizedBox(height: 10),
        Text(
          'LOL',
          style: TextStyle(color: Colors.white, fontSize: 15),
        )
      ],
    );
