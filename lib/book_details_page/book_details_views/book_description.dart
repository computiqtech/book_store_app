
import 'package:flutter/material.dart';

class BookDescription extends StatelessWidget {
  const BookDescription({
    Key? key,
    required this.description,
  }) : super(key: key);
  final String description;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 2),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.only(bottom: 100),
        child: SizedBox(
          width: 400,
          height: 100,
          child: Text(
            description,
            style:
                TextStyle(fontSize: 15, color: Colors.grey[700], height: 1.4),
          ),
        ),
      ),
    );
  }
}
