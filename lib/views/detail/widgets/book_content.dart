import 'package:book_store_app/data/models/book.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/header.dart';
import '../../../widgets/rate_stars.dart';

class BookContent extends StatelessWidget {
  const BookContent({Key? key, required this.book}) : super(key: key);
  final Book book;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Header(),
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.network(
            book.cover!,
            fit: BoxFit.contain,
            height: 320,
          ),
        ),
        const SizedBox(height: 22),
        Text(
          book.title!,
          style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).primaryColor),
        ),
        const SizedBox(height: 12),
        Text(
          book.author!,
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Theme.of(context).primaryColor.withOpacity(0.5),
          ),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const RateStars(),
            const SizedBox(width: 10),
            Text(
              "${book.rate}/5.0",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                color: const Color(0xff06070D),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Text(
          book.description!,
          style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Theme.of(context).primaryColor.withOpacity(0.5)),
        ),
      ],
    );
  }
}
