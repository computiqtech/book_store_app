import 'package:flutter/material.dart';

class ProfileRow extends StatelessWidget {
  const ProfileRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          child: const Image(image: AssetImage('images/pro.png')),
        ),
        const SizedBox(
          width: 10,
        ),
        const Text('Hi,Ali!',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        const Spacer(),
        Container(
            height: 18,
            width: 4,
            child: const Image(image: AssetImage('images/Vector.png')))
      ],
    );
  }
}
