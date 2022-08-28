import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 50,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child:
                Image.network("https://api.lorem.space/image/face?w=150&h=150"),
          ),
        ),
        const SizedBox(width: 12),
        Text(
          "Hi, Ali!",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Theme.of(context).primaryColor),
        ),
        const Spacer(),
        IconButton(
          padding: EdgeInsets.zero,
          constraints: BoxConstraints(),
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
