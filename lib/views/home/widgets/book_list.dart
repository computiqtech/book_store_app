import 'package:book_store_app/widgets/fading_list.dart';
import 'package:book_store_app/widgets/rate_stars.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../data/data_source.dart';

class BookList extends StatelessWidget {
  const BookList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadingListView(
      listView: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: DataSource.localBooks.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(
                  "${DataSource.localBooks[index].cover!}$index",
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
                    DataSource.localBooks[index].title!,
                    style: GoogleFonts.poppins(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    DataSource.localBooks[index].author!,
                    style: GoogleFonts.poppins(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "\$${DataSource.localBooks[index].price}",
                    style: GoogleFonts.poppins(
                      color: const Color(0xff191919),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 5),
                  // Text(DataSource.localBooks[index].rate.toString()),
                  const RateStars(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
