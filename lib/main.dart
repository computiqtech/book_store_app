
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'modules.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          appBar: AppBar(
            systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: Colors.transparent
            ),
            backgroundColor: const Color(0xfff0f0f0),
            elevation: 0,
            toolbarHeight: 10,
          ),
          backgroundColor: const Color(0xfff0f0f0),

        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: (){},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: const Size(0, 0),
                      ),
                      child: const Icon(Icons.person_rounded, size: 40, color: Colors.black,)),
                  const Text('   Hi, Ali!', style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),), const Spacer(),
                  const Icon(Icons.more_vert, size: 35,),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: SizedBox(
                        width: 400,
                        height: 50,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),

                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: InputBorder.none,
                            hintText: 'Search...',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                            ),
                            suffix: Icon(Icons.search, color: Colors.black45, size: 30,),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: Text('Book List', style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                    Stack(
                      children: [
                        Container(
                          color: Colors.cyan,
                          width: double.maxFinite,
                          height: 455,
                          child: ListView(
                            children: MyBooks.book.map((e) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 35),
                                    child: Image.network(e.imageLink,
                                      width: 80, height: 130,),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(e.bookName, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                      Text(e.bookAuth, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                      Text(e.price, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                      Row(
                                        children: const [
                                          Icon(Icons.star), Icon(Icons.star), Icon(Icons.star),
                                          Icon(Icons.star), Icon(Icons.star_border_sharp),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),).toList()
                          ),
                        ),
                        Positioned(
                          bottom: 30,
                          child: Container(
                            width: 227,
                            height: 72,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: Navigation.icons.map((e) => TextButton(
                                  onPressed: (){
                                    if(e.icon == Icons.add){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const MyApp4()));
                                    }
                                  },
                                  child: Icon(e.icon, color: Colors.black, size: 30,))).toList()
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class MyApp4 extends StatelessWidget {
  const MyApp4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent
          ),
          backgroundColor: const Color(0xfff0f0f0),
          elevation: 0,
          toolbarHeight: 10,
        ),
        backgroundColor: const Color(0xfff0f0f0),

        body:Column(
          children: [
            Row(
              children: [
                TextButton(onPressed: (){}, child: const Icon(Icons.arrow_back_ios)),
                TextButton(onPressed: (){}, child: const Icon(Icons.more_vert),),

              ],
            )
          ],
        )

      ),
    );
  }
}