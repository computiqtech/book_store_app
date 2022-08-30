
import 'package:book_store_app/models/myColor.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 40,
          width: 40,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'lib/assets/images/profile.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
         Padding(
          padding:const EdgeInsets.only(left: 10),
          child: Text(
            'Hi, Haider!',
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold,color: MyColor.primaryColor),
          ),
        ),
        const Spacer(),
        const Icon(Icons.more_vert)
      ],
    );
  }
}
