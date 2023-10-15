// import 'package:book_store_app/model.dart';
// import 'package:flutter/material.dart';
//
// import '../app_bars/the_app_bar2.dart';
// import '../book_widget.dart';
// import '../widgets/app_bottom_nav_bar.dart';
//
// class CartPage extends StatelessWidget {
//   const CartPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     int currentIndex = 0;
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: const Color.fromARGB(255, 245, 245, 245),
//         body: Padding(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const MyAppBar2(),
//               const Padding(
//                 padding: EdgeInsets.only(left: 15, bottom: 20),
//                 child: Text(
//                   'Cart',
//                   style: TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: ListView(
//                     children:
//                         Book.cartBooks.map((e) => MyBook(book: e)).toList()),
//               ),
//             ],
//           ),
//         ),
//         bottomNavigationBar: AppBottomNavigationBar(currentIndex: currentIndex,),
//       ),
//     );
//   }
// }
