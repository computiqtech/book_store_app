
import 'package:flutter/cupertino.dart';

class AddBook extends StatelessWidget {
  const AddBook({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, bottom: 20),
      child: Container(
          width: double.maxFinite,
          alignment: Alignment.centerLeft,
          child: const Text('Add Book', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, height: 2),)
      ),
    );
  }
}
