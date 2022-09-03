import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BigCustomButton extends StatelessWidget {
  const BigCustomButton({Key? key, required this.title, required this.onTap})
      : super(key: key);
  final String title;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xff1A07080E),
            spreadRadius: 7,
            blurRadius: 32,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: const Color(0xff06070D),
            elevation: 0.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16))),
        onPressed: onTap,
        child: Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
