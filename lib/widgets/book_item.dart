import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/models/book.dart';
import 'rate_stars.dart';

class BookItem extends StatelessWidget {
  const BookItem({Key? key, required this.book}) : super(key: key);
  final Book book;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.network(
              book.cover!,
              height: 106,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                book.title!,
                style: GoogleFonts.poppins(
                  color: Theme.of(context).primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                book.author!,
                style: GoogleFonts.poppins(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "\$${book.price}",
                style: GoogleFonts.poppins(
                  color: const Color(0xff191919),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 5),
              const RateStars(),
            ],
          )
        ],
      ),
    );
  }
}
