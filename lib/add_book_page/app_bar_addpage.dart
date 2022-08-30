import 'package:flutter/material.dart';

class AppBaradd extends StatelessWidget {
  const AppBaradd({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios, size: 24, color: Colors.black),
          ),
          //Expanded(child: SizedBox()),
          TextButton(
              onPressed: () {},
              child: const Icon(Icons.more_vert, size: 26, color: Colors.black))
        ],
      ),
    );
  }
}
