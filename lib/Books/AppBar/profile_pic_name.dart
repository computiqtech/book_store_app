import 'package:flutter/material.dart';

class ProfilePicName extends StatelessWidget {
  const ProfilePicName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  image: NetworkImage(
                      "https://api.lorem.space/image/face?w=150&h=150"))),
        ),
        const SizedBox(
          width: 10,
        ),
        const Text("Hello User",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
      ],
    );
  }
}
