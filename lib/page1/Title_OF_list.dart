import 'package:flutter/cupertino.dart';

class Title_OF_list extends StatelessWidget {
  const Title_OF_list({
    Key? key,
    this.title,
  }) : super(key: key);
  final title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
