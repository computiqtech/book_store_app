import 'package:book_store_app/add_book/add_book.dart';
import 'package:book_store_app/book_page/book_page.dart';
import 'package:book_store_app/cart/cart_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 50,
      margin: const EdgeInsets.symmetric(vertical: 30),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
        color: Colors.white,
      ),
      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(bottom: 15),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          hintText: 'Search...',
          suffixIcon: Icon(Icons.search_sharp),
        ),
      ),
    );
  }
}

class ProfileBar extends StatelessWidget {
  const ProfileBar({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1780&q=80",
                width: 50,
                height: 50,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(
            "Hi, ${name}!",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            height: 50,
            alignment: Alignment.centerRight,
            child: const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}

class BookPreview extends StatelessWidget {
  const BookPreview({
    Key? key,
    required this.data,
  }) : super(key: key);

  final BookData data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        Get.to(() => BookPage(
              book: data,
            ));
      },
      child: Container(
        width: double.maxFinite,
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Book Cover
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      child: Image.network(
                        data.imgUrl,
                        height: 106,
                      ))
                ],
              ),
            ),
            // Book details
            Expanded(
              flex: 4,
              child: Container(
                height: 106,
                margin: const EdgeInsets.only(left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // Book Title
                    Text(
                      data.bookTitle,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          fontFamily: 'Poppins'),
                    ),
                    // Book Author
                    Text(
                      data.bookAuthor,
                      style: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins'),
                    ),
                    // Book price
                    Text(
                      r"$" + "${data.bookPrice}",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    // Book rating
                    Row(
                      children: data.stars,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BookData {
  final String imgUrl;
  final String bookTitle;
  final String bookAuthor;
  final String bookPrice;
  final String bookDescription;

  BookData(
      {required this.imgUrl,
      required this.bookTitle,
      required this.bookAuthor,
      required this.bookPrice,
      required this.bookDescription});

  static RxList<BookData> books = [
    BookData(
        imgUrl:
            "https://images-na.ssl-images-amazon.com/images/I/51z-IRt+lNL._SX258_BO1,204,203,200_.jpg",
        bookTitle: "Automate the boring stuff with python",
        bookAuthor: "Al Sweigart",
        bookPrice: "44.99",
        bookDescription:
            'On one wing, he worries he might fail and on the other wing he thinks of how he may succeed. He worries that if he tries, he may get lost in the world.'),
    BookData(
        imgUrl:
            "https://images-na.ssl-images-amazon.com/images/I/31j9cHZgKML._SX218_BO1,204,203,200_QL40_ML2_.jpg",
        bookTitle: "Assassin's Creed: The Secret Crusade: 1",
        bookAuthor: "Oliver Bowden",
        bookPrice: "23.78",
        bookDescription:
            'On one wing, he worries he might fail and on the other wing he thinks of how he may succeed. He worries that if he tries, he may get lost in the world.'),
    BookData(
        imgUrl: "https://m.media-amazon.com/images/I/41gr3r3FSWL.jpg",
        bookTitle: "Book Cover Design Formula",
        bookAuthor: "Anita Nipane",
        bookPrice: "27.13",
        bookDescription:
            'On one wing, he worries he might fail and on the other wing he thinks of how he may succeed. He worries that if he tries, he may get lost in the world.'),
    BookData(
        imgUrl:
            "data:image/jpeg;base64,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",
        bookTitle: "The Last Wish: Introducing the Witcher",
        bookAuthor: "by Andrzej Sapkowski",
        bookPrice: "7.8",
        bookDescription:
            'On one wing, he worries he might fail and on the other wing he thinks of how he may succeed. He worries that if he tries, he may get lost in the world.'),
  ].obs;

  static RxList<BookData> boughtBooks = [
    BookData(
        imgUrl:
        "https://images-na.ssl-images-amazon.com/images/I/51z-IRt+lNL._SX258_BO1,204,203,200_.jpg",
        bookTitle: "Automate the boring stuff with python",
        bookAuthor: "Al Sweigart",
        bookPrice: "44.99",
        bookDescription:
        'On one wing, he worries he might fail and on the other wing he thinks of how he may succeed. He worries that if he tries, he may get lost in the world.'),
  ].obs;

  RxList<Icon> stars = [
    Icon(
      Icons.star,
      color: Colors.orangeAccent.shade200,
    ),
    Icon(
      Icons.star,
      color: Colors.orangeAccent.shade200,
    ),
    Icon(
      Icons.star,
      color: Colors.orangeAccent.shade200,
    ),
    Icon(
      Icons.star,
      color: Colors.orangeAccent.shade200,
    ),
    Icon(
      Icons.star,
      color: Colors.grey.shade100,
    )
  ].obs;
}

class HomeBottomNavBar extends StatefulWidget {
  const HomeBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeBottomNavBar> createState() => _HomeBottomNavBarState();
}

class _HomeBottomNavBarState extends State<HomeBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.bottomCenter,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        margin: const EdgeInsets.only(bottom: 30),
        padding: EdgeInsets.all(20),
        width: 220,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: BottomNavBarData.myButtons
              .map((e) => TextButton(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {
                    if (e.name == "addBook") {
                      Get.to(AddBook());
                    } else if (e.name == "cart") {
                      Get.to(CartPage());
                    }
                    setState(() {});
                  },
                  child: BottomNavBar(data: e)))
              .toList(),
        ),
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key, required this.data}) : super(key: key);

  final BottomNavBarData data;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        data.icon,
        color: data.myColor,
      ),
    );
  }
}

class BottomNavBarData {
  final IconData icon;
  final String name;
  final Color myColor;

  BottomNavBarData({required this.icon, required this.name, required this.myColor});

  static List<BottomNavBarData> myButtons = [
    BottomNavBarData(icon: Icons.home_filled, name: "home", myColor: Colors.black,),
    BottomNavBarData(icon: Icons.shopping_cart_outlined, name: "cart", myColor: Colors.grey,),
    BottomNavBarData(icon: Icons.add, name: "addBook", myColor: Colors.grey,)
  ];
}
