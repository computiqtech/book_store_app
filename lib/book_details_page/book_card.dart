import 'package:book_store_app/models/book_data.dart';
import 'package:book_store_app/models/myColor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({
    Key? key,
    required this.data,
  }) : super(key: key);

//'https://api.lorem.space/image/book?w=216&h=320'
  final BookData data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            width: 216,
            height: 320,
            child: Image.network(
              data.bookLink,
              fit: BoxFit.fitWidth,
              width: 216,
              height: 320,
              errorBuilder: (context, url, error) => const Icon(Icons.error),
            )),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(data.bookName,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: MyColor.primaryColor)),
        ),
        Text(data.authorName,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: MyColor.secondColor,
            )),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                size: 14,
                color: MyColor.yellowStarColor,
              ),
              Icon(
                Icons.star,
                size: 14,
                color: MyColor.yellowStarColor,
              ),
              Icon(
                Icons.star,
                size: 14,
                color: MyColor.yellowStarColor,
              ),
              Icon(
                Icons.star,
                size: 14,
                color: MyColor.yellowStarColor,
              ),
              Icon(
                Icons.star_half_outlined,
                size: 14,
                color: MyColor.yellowStarColor,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  '4.5',
                  style: TextStyle(
                      color: MyColor.primaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text('/5.0',
                  style:
                      TextStyle(color: MyColor.fullRateTextColor, fontSize: 12))
            ],
          ),
        ),
        Text(data.bookDescription,maxLines: 3,overflow:TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: MyColor.secondColor,
            )),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: GestureDetector(
            onTap: (){
              Get.defaultDialog(title: 'Book Description',middleText:data.bookDescription ,middleTextStyle: TextStyle(fontSize: 14,
                fontWeight: FontWeight.bold,
                color: MyColor.secondColor,) );
            },
              child: Text('more details click here' ,style: TextStyle(fontSize: 12,color: MyColor.secondColor))),
        )
      ],
    );
  }
}
