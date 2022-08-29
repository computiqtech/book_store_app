import 'package:flutter/material.dart';

Widget mytext(
    {required String texty,
    bool isbold = false,
    double sizy = 15,
    Color colory = Colors.black}) {
  return Text(
    texty,
    style: TextStyle(
        fontWeight: isbold ? FontWeight.bold : FontWeight.normal,
        fontSize: sizy,
        color: colory),
  );
}
