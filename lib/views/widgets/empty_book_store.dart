import 'package:flutter/cupertino.dart';

import '../../style.dart';

class EmptyBookStore extends StatelessWidget {
  const EmptyBookStore({Key? key, required this.text, required this.icon})
      : super(key: key);

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height / 8),
          Icon(icon, size: 48),
          const SizedBox(height: 16),
          Text(
            text,
            style: nameUserTextStyle.copyWith(
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}

