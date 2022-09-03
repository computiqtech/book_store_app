import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BigTitle extends StatelessWidget {
  const BigTitle({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.poppins(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: Theme.of(context).primaryColor),
    );
  }
}
