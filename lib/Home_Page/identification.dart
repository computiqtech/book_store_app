
import 'package:flutter/material.dart';

class identification extends StatelessWidget {
  const identification({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.only(left: 25),
          height: 50,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child:ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              image: NetworkImage(
                  'https://png.pngtree.com/png-clipart/20191228/ourlarge/pngtree-anime-character-selfie-transfarans-background-png-image_2095862.jpg'),
            ),
          ),

        ),
        Text("Hi,Ali!"),
        Spacer(),
        TextButton(onPressed: (){}, child:Icon(Icons.more_vert,color: Colors.black,))
      ],
    );
  }
}