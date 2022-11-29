import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    //centerTitle: true,
    backgroundColor: Color(0xff09031d),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const Text(
          'Sarmad',
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(
          width: 5,
        ),
        const Icon(
          CupertinoIcons.checkmark_alt_circle_fill,
          color: Colors.blueAccent,
          size: 25.0,
        )
      ],
    ),
    leading: Padding(
      padding: const EdgeInsets.only(left: 15),
      child: IconButton(
        icon: Icon(CupertinoIcons.chevron_back),
        iconSize: 35,
        color: Colors.white,
        onPressed: () {},
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 15),
        child: IconButton(
          icon: Icon(CupertinoIcons.ellipsis),
          iconSize: 35,
          color: Colors.white,
          onPressed: () {},
        ),
      )
    ],
  );
}
