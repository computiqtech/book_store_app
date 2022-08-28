


import 'package:flutter/material.dart';

class SerachWidget extends StatelessWidget {
   SerachWidget({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 29, right: 29, top: 10),
        child: Column(
          children: <Widget> [
            TextField(
              maxLines: 5,
              minLines: 1,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: const Color.fromRGBO(255, 255, 255, 1),
                  border: InputBorder.none,
                  hintText: 'Search...',
                  hintStyle: const TextStyle(fontSize: 18),
                  suffixIcon:IconButton(
                    icon: const Icon(Icons.search, size: 26, color: Color.fromRGBO(132, 136, 158, 1),),
                    color: Colors.white,
                    onPressed: () {
                      print("hiiii");
                      },
              ),
            )
            ),
          ],
        )
    );
  }
}