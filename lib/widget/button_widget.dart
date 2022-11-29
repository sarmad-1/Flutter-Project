import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 102, 102, 255),
                    blurRadius: 20,
                  ),
                ],
              ),
              width: 265,
              height: 50,
              child: buttonOne(),
            ),
            const SizedBox(
              width: 15,
            ),
            Container(
              width: 70,
              height: 50,
              child: buttonTwo(),
            ),
          ],
        ),
      );

  Widget buttonOne() => ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          onPrimary: Colors.white,
          shadowColor: Colors.white,
          //padding: EdgeInsets.symmetric(horizontal: 22, vertical: 2),
          backgroundColor: Color.fromARGB(255, 102, 102, 255),
        ),
        child: const Text(
          'Follow',
          style: TextStyle(fontSize: 14),
        ),
        onPressed: () => {},
      );

  Widget buttonTwo() => ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            onPrimary: Color.fromARGB(255, 218, 218, 218),
            backgroundColor: Color.fromARGB(255, 23, 23, 23)),
        child: Icon(Icons.calendar_month),
        onPressed: () => {},
      );
}
