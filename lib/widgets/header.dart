import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({Key? key, this.isHomeHeader = false}) : super(key: key);
  final bool isHomeHeader;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (isHomeHeader)
          SizedBox(
            height: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                  "https://api.lorem.space/image/face?w=150&h=150"),
            ),
          ),
        if (isHomeHeader) const SizedBox(width: 12),
        if (isHomeHeader)
          Text(
            "Hi, Ali!",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Theme.of(context).primaryColor),
          ),
        if (!isHomeHeader)
          IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Theme.of(context).primaryColor,
            ),
          ),
        const Spacer(),
        IconButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          onPressed: () {},
          icon: Icon(
            Icons.more_vert,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ],
    );
  }
}
