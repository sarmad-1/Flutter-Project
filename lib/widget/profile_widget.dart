import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) => Center(
        child: Container(
          height: 170,
          child: Stack(
            children: [
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                          color: Color.fromARGB(255, 246, 37, 0), width: 4)),
                  child: buildImage()),
              Positioned(
                bottom: 3,
                right: 50,
                child: buildLiveButton(),
              ),
            ],
          ),
        ),
      );
}

Widget buildImage() => Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
                color: Color.fromARGB(255, 102, 102, 255), width: 6)),
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
      child: InkWell(
        child: Container(
          height: 27,
          width: 55,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 246, 37, 0),
              border: Border.all(
                width: 1,
                color: Color(0xff09031d),
              ),
              borderRadius: BorderRadius.circular(100)),
          child: const Text(
            'Live',
            style: TextStyle(height: 1.2, fontSize: 18, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        onTap: () {},
      ),
    );
