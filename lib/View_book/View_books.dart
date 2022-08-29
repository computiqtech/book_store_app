import 'package:flutter/cupertino.dart';

class Books_Cover extends StatelessWidget {
  const Books_Cover({
    Key? key, required this.links,
  }) : super(key: key);
  final String links;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
          height: 310,
          width: 211,
          decoration:  BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      links
                  ),
                  fit: BoxFit.cover),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15)))),
    );
  }
}