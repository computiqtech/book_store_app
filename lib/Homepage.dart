import 'package:book_store_app/Buybook.dart';
import 'package:flutter/material.dart';
import 'Cart.dart';
import 'add_page.dart';
import 'booklist.dart';
class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 50),
        child: Center(
            widthFactor: double.infinity,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(color: Colors.black, child: Image.network('https://i.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U',width: 50,height: 50))
                          ),
                        ),
                        const Text('Hi, Morgan Freeman'),
                        const Spacer(),
                        const Icon(Icons.more_vert)
                      ],
                    ),
                    const SizedBox(height: 40),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                          color: const Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          children: const [
                            Text('Search...', style: TextStyle(color: Color(0xFF84889E)),),
                            Spacer(),
                            Icon(Icons.search, color: Color(0xFF84889E),)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 46),
                    const Text('Book List',style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
                    Expanded(child: Booklist())
                  ],
                ),
                Positioned(
                  bottom: 0,
                  left: 70,
                  right: 70,
                  child: Container(
                    width: 180,
                    height: 72,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(22)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(onPressed: (){},
                            icon: const Icon(Icons.home_outlined,)),
                        IconButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
                        },
                            icon: const Icon(Icons.shopping_cart_outlined,color: Color(0xFF9C9EA8))),
                        IconButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => AddPage()));
                        },
                            icon: const Icon(Icons.add,color: Color(0xFF9C9EA8)))
                      ],
                    ),
                  ),
                )
              ],
            )
        ),
      ),
    );
  }
}
