import 'package:flutter/material.dart';
import '../../models/book_model.dart';

class SearchTextField extends StatelessWidget {
  SearchTextField({
    Key? key,
  }) : super(key: key);

  static TextEditingController searchInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: TextField(
        controller: SearchTextField.searchInputController,
        decoration: InputDecoration(
            filled: true,
            fillColor: Color.fromARGB(212, 252, 252, 252),
            hintText: 'Search...',
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
            suffixIcon: const Image(
                width: 20.31,
                height: 20.31,
                image: AssetImage('images/search.png'))),
        onChanged: (input) {
          Book.isFiltered.value = true;
        },
        onEditingComplete: () {
          Book.isFiltered.value = false;
          FocusScope.of(context).unfocus();
          SearchTextField.searchInputController.clear();
        },
      ),
    );
  }
}
