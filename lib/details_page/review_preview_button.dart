import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    Key? key, required this.icon, required this.text,
  }) : super(key: key);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 154,
      child: MaterialButton(onPressed: (){},
        height: 40,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:  [
            Icon(icon,color: Colors.black,),
            Text(text,
              style:  const TextStyle(
                color: Colors.black,
                fontFamily:'Poppins',
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),),
          ],
        ),
      ),
    );
  }
}
