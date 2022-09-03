import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallCustomButton extends StatelessWidget {
  const SmallCustomButton({Key? key, required this.asset, required this.title})
      : super(key: key);
  final String asset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xff0D07080E),
            spreadRadius: 7,
            blurRadius: 32,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          primary: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () {},
        child: Row(
          children: [
            SvgPicture.asset(
              asset,
              color: Colors.black,
            ),
            const SizedBox(width: 15),
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).primaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
