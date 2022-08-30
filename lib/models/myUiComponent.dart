import 'package:book_store_app/book_details_page/bookDetalisPage.dart';
import 'package:book_store_app/models/book_data.dart';
import 'package:book_store_app/models/myColor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Rx<int> currentPage=0.obs;

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Get.back();
          },
          icon:const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20,
            color: Colors.black,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon:const Icon(
            Icons.more_vert,
            size: 24,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}




class BookView extends StatelessWidget {
    const BookView({required this.book,
    Key? key, required this.show,
  }) : super(key: key);
  final BookData book;
  final bool show;
//'https://api.lorem.space/image/book?w=72&h=106'
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(BookDetailsPage(myBook: book));
      },
      child: Container(
        margin:const EdgeInsets.only(bottom: 23),
        width: double.maxFinite,
        height: 105,
        child: Row(
          children: [
            SizedBox(
              height: 106,width: 72,
              child: Image.network(
                book.bookLink,
                fit: BoxFit.fill,
                errorBuilder: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 25, top: 8, bottom: 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(book.bookName,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: MyColor.primaryColor)),
                    Text(book.authorName,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: MyColor.secondColor,
                        )),
                    Text(
                      '\$${book.bookPrice}',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: MyColor.priceColor),
                    ),
                    Row(
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
                          Icons.star,
                          size: 14,
                          color: MyColor.whiteStarColor,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),

            Visibility(
              visible: show,
              child: IconButton(onPressed: (){
                book.removeBuyList();
              }, icon: const Icon(Icons.remove_shopping_cart_outlined,color: Colors.red,),

              ),
            )
          ],
        ),
      ),
    );
  }
}

