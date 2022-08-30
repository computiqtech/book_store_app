import 'package:my_book_store_app/main.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5, top: 70, left: 5, right: 20),
      child: Row(
        children: [
          TextButton(
            onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MyHomePage())),
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black,
            )
          ),
          const Spacer(),
          TextButton(
              onPressed: () => print('hi'),
              child: const Icon(
                Icons.more_vert,
                color: Colors.black,
              ))
        ],
      ),
    );
  }
}