import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) => Center(
        child: Container(
          height: 160,
          width: 160,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        border: Border.all(color: Colors.red, width: 3)),
                    child: buildImage()),
              ),
              Positioned(
                bottom: -3,
                right: 50,
                child: buildLiveButton(),
              ),
            ],
          ),
        ),
      );
}

Widget buildImage() => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 140,
        height: 140,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(70),
            border: Border.all(
                color: Color.fromARGB(255, 102, 102, 255), width: 4)),
        child: ClipOval(
          child: Material(
            child: Ink.image(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1619725002198-6a689b72f41d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
              fit: BoxFit.cover,
              width: 130,
              height: 130,
              child: InkWell(onTap: () => {}),
            ),
          ),
        ),
      ),
    );

Widget buildLiveButton() => Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          border: Border.all(color: Color(0xff09031d), width: 4)),
      child: SizedBox(
        height: 25,
        width: 55,
        child: ElevatedButton(
          onPressed: () => {},
          child: Text(
            'Live',
            style: TextStyle(fontSize: 10),
            textAlign: TextAlign.center,
          ),
          style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.red)),
        ),
      ),
    );
