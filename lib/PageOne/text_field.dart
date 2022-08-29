import 'package:book_store_app/model.dart';
import 'package:flutter/material.dart';
class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController editingController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 38,horizontal: 10),
      child:TextField(
            onSubmitted: (x){
              Book.Q.value =x;
            },
            controller: editingController,
            style: TextStyle(fontSize: 20,color: Color.fromRGBO(132, 136, 158, 1)),
            minLines: 1,
            maxLines: 2,
            textInputAction: TextInputAction.search,
            decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromRGBO(255, 255, 255, 1),
              border: InputBorder.none,
              hintText: 'Search...',
              suffixIcon: TextButton(
                onPressed: (){

                },
                child: Icon(Icons.search, color: Colors.grey),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Colors.greenAccent,
                    width: 1,
                  )
              ),
            ),
          )

    );
  }
}