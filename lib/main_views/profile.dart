import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage('https://i.pinimg.com/564x/00/95/e0/0095e010d9d7e80fbe0d63f0459f5425.jpg'),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.cover),
                color: Colors.amber,
                borderRadius: BorderRadius.circular(30))),
          const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text("Hi, Haithem!", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20))),
          const Spacer(),
          TextButton(
              onPressed: () => print('hi'),
              child: const Icon(Icons.more_vert, color: Colors.black, ))
        ],
      ),
    );
  }
}
