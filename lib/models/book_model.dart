import 'package:flutter/material.dart';
import 'package:book_store_app/main.dart';

class BookModel{
  const BookModel({
    Key? key,
    required this.imageUrl,
    required this.rating,
    required this.title,
    required this.author,
    required this.price,
    required this.description,
  });
  final String imageUrl;
  final double rating;
  final String title;
  final String author;
  final String price;
  final String description;
  static List<BookModel> book = [
    BookModel(
      imageUrl: 'https://i.pinimg.com/564x/00/95/e0/0095e010d9d7e80fbe0d63f0459f5425.jpg',
      rating: 4,
      title: 'Yves Saint Laurent',
      author: 'Suzy Monkes',
      description:
          'idkjndlkdjfnv;kjn',
      price: '5',
    ),
    BookModel(
      imageUrl: 'https://i.pinimg.com/564x/00/95/e0/0095e010d9d7e80fbe0d63f0459f5425.jpg',
      rating: 5,
      title: 'Yves Saint Laurent2',
      author: 'Suzy Monkes2',
      description:
          '2',
      price: '12',
    )
  ];
}

class StarDisplay extends StatelessWidget {
  final double value;
  const StarDisplay({Key? key, this.value = 0})
      : assert(value != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          index < value.round() ? Icons.star : Icons.star_border,
          color: Colors.amber,
        );
      }),
    );
  }
}
// class BookModel {
//   BookModel(this.imageUrl, this.title, this.author, this.price,
//       this.description, this.rating, 

//   final String imageUrl;
//   final String rating;
//   final String title;
//   final String author;
//   final String price;
//   final String description;
//   // BookModel.builder(
//   //   this.imageUrl,
//   //   this.rating,
//   //   this.title,
//   //   this.author,
//   //   this.price,
//   //   this.description, {
//   //   dynamic initialRating = 3,
//   //   dynamic minRating = 1,
//   //   dynamic direction = Axis.horizontal,
//   //   dynamic allowHalfRating = true,
//   //   dynamic itemCount = 5,
//   //   dynamic itemPadding = const EdgeInsets.symmetric(horizontal: 4.0),
//   //   //dynamic itemBuilder =const () {},
//   //   //dynamic onRatingUpdate = () {},
//   // });
   

// }
