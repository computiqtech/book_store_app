import 'package:book_store_app/models/book_model.dart';
import 'package:flutter/material.dart';

class ListedBooks extends StatelessWidget {
  const ListedBooks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.only(top: 4),
        children: BookModel.book
            .map((e) => TextButton(
                  style: TextButton.styleFrom(),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.amber),
                    padding: EdgeInsets.all(0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(0),
                          height: 135,
                          width: 110,
                          decoration: BoxDecoration(color: Colors.amber,image: DecorationImage(image: NetworkImage(e.imageUrl), fit: BoxFit.fill))
                        ),
                        Column(
                          children: [
                            Text(e.author),
                          ],
                        ),
                      ],
                    ),
                  ),
                  onPressed: () => print('object'),
                ))
            .toList(),
      ),
    );
  }
}
