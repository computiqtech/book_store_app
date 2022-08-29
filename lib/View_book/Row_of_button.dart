import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Row_of_button extends StatelessWidget {
  const Row_of_button({
    Key? key, required this.text, required this.icon,
  }) : super(key: key);
  final String text;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 160,
        height: 40,
        child: ElevatedButton.icon(
            label: Text(text,
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w500)),
            style: ButtonStyle(
              foregroundColor:
              MaterialStateProperty.all<Color>(Colors.black87),
              backgroundColor:
              MaterialStateProperty.all<Color>(Colors.white),
              shape:
              MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  )),
            ),
            onPressed: () {},
            icon:  icon));
  }
}
