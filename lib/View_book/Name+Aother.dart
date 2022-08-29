import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class books_name extends StatelessWidget {
  const books_name({
    Key? key, required this.Books_name, required this.Aother_name,
  }) : super(key: key);
  final String Books_name;
  final String Aother_name;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 22),
            child: Text(
              Books_name,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Text(
              Aother_name,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
            ),
          ),
          star()
        ],
      ),
    );
  }
}

class star extends StatelessWidget {
  const star({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12,bottom: 10
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.star,
            size: 16,
            color: Color(0xFFFFC41F),
          ),
          Icon(
            Icons.star,
            size: 16,
            color: Color(0xFFFFC41F),
          ),
          Icon(
            Icons.star,
            size: 16,
            color: Color(0xFFFFC41F),
          ),
          Icon(
            Icons.star,
            size: 16,
            color: Color(0xFFFFC41F),
          ),
          HalfFilledIcon(
              icon: Icons.star_rate,
              size: 16,
              color: Color(0xFFFFC41F)),
        ],
      ),
    );
  }
}

class HalfFilledIcon extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color color;

  HalfFilledIcon({required this.icon, required this.size, required this.color});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcATop,
      shaderCallback: (Rect rect) {
        return LinearGradient(
          stops: [0, 0.5, 0.5],
          colors: [color, color, color.withOpacity(0)],
        ).createShader(rect);
      },
      child: SizedBox(
        width: size,
        height: size,
        child: Icon(icon, size: size, color: Colors.grey[300]),
      ),
    );
  }
}