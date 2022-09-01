
import 'package:flutter/material.dart';

class ProfileRow extends StatelessWidget {
  const ProfileRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10,bottom: 30),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              image: const DecorationImage(image: AssetImage('assets/profile_pic.jpg')),
              borderRadius: BorderRadius.circular(10),
            ),
          ),

          const Expanded(
              child: Text("Hi, Ali",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                ),
              )
          ),
          const Icon(Icons.more_vert),
        ],
      ),
    );
  }
}
