import 'package:flutter/material.dart';

class NumbersWidget extends StatelessWidget {
  const NumbersWidget({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            numbers('123', 'Following'),
            divider(),
            numbers('10M', 'Followers'),
            divider(),
            numbers('199', 'Videos'),
          ],
        ),
      );

  Widget divider() => Container(
        height: 35,
        child: const VerticalDivider(
          color: Color.fromARGB(255, 53, 52, 52),
        ),
      );

  Widget numbers(String value, String text) => MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 4),
        onPressed: () {},
        child: Column(
          children: <Widget>[
            Text(
              value,
              style: const TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              text,
              style: const TextStyle(color: Color.fromARGB(255, 147, 147, 147)),
            ),
          ],
        ),
      );
}
