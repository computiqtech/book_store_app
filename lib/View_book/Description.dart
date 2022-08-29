import 'package:flutter/cupertino.dart';

class Description11 extends StatelessWidget {
  const Description11({
    Key? key,
    required this.Description1,
  }) : super(key: key);
  final String Description1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(

        child: Text(
          Description1,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 15,
            color: Color(0xFF06070D),
            height: 1.6,
          ),
        ),
      ),
    );
  }
}
