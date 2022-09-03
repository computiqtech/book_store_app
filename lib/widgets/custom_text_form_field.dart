import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    Key? key,
    required this.hintText,
    this.maxLines,
    this.onSaved,
    this.onFieldSubmitted,
    this.controller,
    this.keyboardInputType,
  }) : super(key: key);

  final String hintText;
  final int? maxLines;
  final void Function(String?)? onSaved;
  final void Function(String)? onFieldSubmitted;
  final TextEditingController? controller;
  final TextInputType? keyboardInputType;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0xff0D07080E),
            blurRadius: 32,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: TextFormField(
          controller: controller,
          maxLines: maxLines,
          onSaved: onSaved,
          keyboardType: keyboardInputType,
          onFieldSubmitted: onFieldSubmitted,
          cursorColor: Colors.black,
          autofocus: true,
          decoration: InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.zero,
            border: InputBorder.none,
            hintText: hintText,
            focusColor: Colors.red,
            hintStyle: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: const Color(0xff84889E),
            ),
          ),
        ),
      ),
    );
  }
}
