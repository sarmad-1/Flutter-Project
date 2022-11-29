import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabContentWidget extends StatelessWidget {
  const TabContentWidget({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                card('Chil Straem Tonight -...', '12k Views . 6 Days ago',
                    'https://images.unsplash.com/photo-1543404809-435007eabb9a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                card('Chil kinda day - CSGO', '522k Views . 1 week ago',
                    "https://images.unsplash.com/photo-1640955059914-c5971628f6f9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                card('Chil Straem Tonight -...', '12k Views . 6 Days ago',
                    "https://images.unsplash.com/photo-1636487658611-5f3a503c0173?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80"),
                card('Chil kinda day - CSGO', '522k Views . 1 week ago',
                    'https://images.unsplash.com/photo-1636487658596-daa25387d112?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80'),
              ],
            ),
          ],
        ),
      );
}

Widget imageWidget(String imagePath) => Stack(
      children: [
        Container(
          width: 170.0,
          height: 170.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(17)),
              image: DecorationImage(
                  image: NetworkImage(imagePath), fit: BoxFit.cover)),
        ),
        Positioned(
          left: 10,
          top: 10,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Color.fromARGB(255, 121, 121, 121).withOpacity(0.5),
            ),
            child: Text("3:10:22",
                style: TextStyle(color: Colors.white, fontSize: 12),
                textAlign: TextAlign.center),
            height: 15,
            width: 60,
          ),
        ),
      ],
    );

Widget card(String text, String text2, String imagePath) => MaterialButton(
      padding: EdgeInsets.symmetric(vertical: 4),
      onPressed: () {},
      child: Column(
        children: <Widget>[
          imageWidget(imagePath),
          SizedBox(height: 10),
          Text(
            text,
            style: const TextStyle(
                fontSize: 15, color: Color.fromARGB(255, 255, 255, 255)),
          ),
          Text(
            text,
            style: const TextStyle(
                fontSize: 10, color: Color.fromARGB(255, 147, 147, 147)),
          ),
        ],
      ),
    );
