import 'package:flutter/material.dart';

import '../../../style.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 28),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              image: AssetImage('assets/images/person.png'),
            ),
          ),
        ),
        const SizedBox(width: 12),
        const Text(
          'Hi, Ali!',
          style: nameUserTextStyle,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
