import 'package:flutter/material.dart';

class FirstRaw extends StatelessWidget {
  const FirstRaw({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 30,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Icon(
            Icons.more_vert,
            color: Colors.black,
            size: 30,
          ),
        )
      ],
    );
  }
}