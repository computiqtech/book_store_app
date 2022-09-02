
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyBooks {

  static Rx<IconData> selectedIcon = Icons.home_filled.obs;
  final RxBool condition = false.obs;
  final String imageLink;
  final String bookName;
  final String bookAuth;
  final String price;
  final String description;

  MyBooks({required this.imageLink, required this.bookName, required this.bookAuth, required this.price, required this.description, });

  static List<MyBooks> book = [
    MyBooks(imageLink: 'https://i.harperapps.com/hcanz/covers/9780008563790/x293.jpg', bookName: 'fire and blood', bookAuth: 'George RR Martin', price: r'$49.99', description: 'good book\ngood book\ngood book\ngood book\ngood book\ngood book\ngood book\ngood book\ngood book\ngood book\n'),
    MyBooks(imageLink: 'https://i.harperapps.com/hcanz/covers/9780008563790/x293.jpg', bookName: 'fire and blood2', bookAuth: 'George RR Martin', price: r'$49.99', description: 'good book\ngood book\ngood book\n'),
    MyBooks(imageLink: 'https://i.harperapps.com/hcanz/covers/9780008563790/x293.jpg', bookName: 'fire and blood3', bookAuth: 'George RR Martin', price: r'$49.99', description: 'good book\ngood book\ngood book\n'),
    MyBooks(imageLink: 'https://i.harperapps.com/hcanz/covers/9780008563790/x293.jpg', bookName: 'fire and blood4', bookAuth: 'George RR Martin', price: r'$49.99', description: 'good book\ngood book\ngood book\n'),
    MyBooks(imageLink: 'https://i.harperapps.com/hcanz/covers/9780008563790/x293.jpg', bookName: 'fire and blood5', bookAuth: 'George RR Martin', price: r'$49.99', description: 'good book\ngood book\ngood book\n'),
    MyBooks(imageLink: 'https://i.harperapps.com/hcanz/covers/9780008563790/x293.jpg', bookName: 'fire and blood6', bookAuth: 'George RR Martin', price: r'$49.99', description: 'good book\ngood book\ngood book\n'),
    MyBooks(imageLink: 'https://i.harperapps.com/hcanz/covers/9780008563790/x293.jpg', bookName: 'fire and blood7', bookAuth: 'George RR Martin', price: r'$49.99', description: 'good book\ngood book\ngood book\n'),
    MyBooks(imageLink: 'https://i.harperapps.com/hcanz/covers/9780008563790/x293.jpg', bookName: 'fire and blood8', bookAuth: 'George RR Martin', price: r'$49.99', description: 'good book\ngood book\ngood book\n'),
  ];

}

class Navigation {
  final IconData icon;

  Navigation({required this.icon});

  static List<Navigation> icons = [
    Navigation(icon: Icons.home_filled),
    Navigation(icon: Icons.shopping_cart),
    Navigation(icon: Icons.add),
  ];
}


class MyText extends StatelessWidget {

  final String text;
  final Color color;
  final double size;
  final double height;

  const MyText({
    Key? key, required this.text, required this.color, required this.size, required this.height
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
      height: height,
      color: color,
      fontSize: size,
    ),);
  }
}


class Stars extends StatelessWidget {
  const Stars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(Icons.star, color: Color(0xffFFC41F),), Icon(Icons.star, color: Color(0xffFFC41F),), Icon(Icons.star, color: Color(0xffFFC41F),),
        Icon(Icons.star, color: Color(0xffFFC41F),), Icon(Icons.star_border_sharp, color: Color(0xffFFC41F),),
      ],
    );
  }
}



class ContainerButton extends StatelessWidget {

  final double width;
  final double height;
  final Color textColor;
  final Color containerColor;
  final IconData? icon;
  final String text;

  const ContainerButton({
    Key? key, required this.width, required this.height, required this.textColor, required this.containerColor, required this.icon, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: TextButton(
          onPressed: (){
            if(icon == null){

            }
          },
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
          ),
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: containerColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, color: Colors.black,),
                Text(text, style: TextStyle(
                  color: textColor,
                  fontSize: 16,
                ),),
              ],
            ),
          )
      ),
    );
  }
}

