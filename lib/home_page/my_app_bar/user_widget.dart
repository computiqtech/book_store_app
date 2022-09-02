import 'package:flutter/material.dart';

class UserName extends StatelessWidget {
  const UserName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Hi, Kasm',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),);
  }
}

class UserImage extends StatelessWidget {
  const UserImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(borderRadius: BorderRadius.circular(8),
      child: Image.network('https://api.lorem.space/image/face?w=150&h=150',
        height: 50,width: 50,),
    );
  }
}