// TODO Implement this library.
import 'package:flutter/material.dart';

import 'modle.dart';

class InformationBook extends StatelessWidget {
  final data_book item;
  const InformationBook({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              TextButton(
                onPressed: ()=>Navigator.pop(context),
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 15,color: Colors.black
                ),
              ),
              Icon(Icons.more_vert, color: Colors.black)
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Image.network(
            item.image,
            height: 300,
            width: 200,
            fit: BoxFit.fitHeight,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            item.title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            item.decration,
            style:
                TextStyle(fontSize: 10, color: Color.fromARGB(66, 46, 43, 43)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                item.icon,
                color: Color.fromARGB(255, 230, 230, 82),
                size: 10,
              ),
              Icon(
                item.icon,
                color: Color.fromARGB(255, 230, 230, 82),
                size: 10,
              ),
              Icon(
                item.icon,
                color: Color.fromARGB(255, 230, 230, 82),
                size: 10,
              ),
              Icon(
                item.icon,
                color: Color.fromARGB(255, 230, 230, 82),
                size: 10,
              ),
              Icon(
                item.icon,
                color: Color.fromARGB(255, 242, 242, 240),
                size: 10,
              ),
              const Text(
                '4.5/5.0',
                style: TextStyle(fontSize: 10),
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            'A spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion.',
            style: TextStyle(fontSize: 14),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 130,
                height: 35,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset(
                    'Vector.png',
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text('Preview')
                ]),
              ),
              Container(
                width: 130,
                height: 35,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset(
                    'Vector1.png',
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text('Previews')
                ]),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
              width: 300,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(15)),
              child: Text(
                'Buy Now for ${item.price}',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ))
        ],
      ),
    ));
  }
}
