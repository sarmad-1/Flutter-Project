import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TapWidget extends StatelessWidget {
  final String text;
  final String text2;

  const TapWidget({
    Key? key,
    required this.text,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        // ignore: prefer_const_constructors
        padding: EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        child: Container(
            child: Column(
          children: [
            TabBar(
              unselectedLabelColor: Color.fromARGB(255, 116, 116, 116),
              labelColor: Colors.white,
              indicatorColor: Color.fromARGB(255, 102, 102, 255),
              tabs: [
                Tab(
                  child: Text(
                    text,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ),
                Tab(
                  child: Text(
                    text2,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ),
              ],
            ),
            //Expanded(child: TabBarView(children: []),),
          ],
        )),
      );
}
