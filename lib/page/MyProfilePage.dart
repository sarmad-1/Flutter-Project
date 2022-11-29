import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproject/widget/appbar_widget.dart';
import 'package:myproject/widget/button_widget.dart';
import 'package:myproject/widget/numbers_widget.dart';
import 'package:myproject/widget/tab_widget.dart';
import 'package:myproject/widget/tab_content_widget.dart';
import 'package:myproject/widget/profile_widget.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: buildAppBar(context),
        backgroundColor: Color(0xff09031d),
        body: Center(
          child: SingleChildScrollView(
            //physics: BouncingScrollPhysics(),
            child: Column(children: [
              SizedBox(height: 10),
              ProfileWidget(),
              SizedBox(height: 24),
              Name(),
              SizedBox(height: 24),
              NumbersWidget(),
              SizedBox(height: 24),
              ButtonWidget(),
              SizedBox(height: 24),
              TapWidget(
                text: 'Recent Prodcast',
                text2: 'Highlight & Uplods',
              ),
              SizedBox(height: 10),
              TabContentWidget(),
            ]),
          ),
        ),
      ),
    );
  }
}

Widget Name() => Column(
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
