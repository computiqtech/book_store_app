import 'package:book_store_app/models/book.dart';
import 'package:book_store_app/models/mytext.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class AddBooks extends StatelessWidget {
  const AddBooks({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController namec = TextEditingController();
    TextEditingController autherc = TextEditingController();
    TextEditingController pricec = TextEditingController();
    TextEditingController imagec = TextEditingController();
    TextEditingController descc = TextEditingController();
    TextEditingController ratec = TextEditingController();
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromARGB(255, 243, 243, 243),
        //! appbar
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarBrightness: Brightness.light,
              statusBarColor: Colors.transparent),
          backgroundColor: const Color.fromARGB(255, 243, 243, 243),
          elevation: 0,
          leading: DeffultAppbar(
            onpress: () {
              Get.back();
            },
          ),
          leadingWidth: 65,
          toolbarHeight: 55,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20, top: 5),
              child: Icon(
                Icons.more_vert,
                color: Colors.black,
                size: 30,
              ),
            )
          ],
        ),
        //!body
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Add Book',
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, right: 10, left: 10),
                  child: Column(
                    children: [
                      DeffultTextfield(
                        hint: 'Book Name',
                        defultcontroller: namec,
                      ),
                      DeffultTextfield(
                        hint: 'Author Name',
                        defultcontroller: autherc,
                      ),
                      DeffultTextfield(
                        hint: 'Price',
                        defultcontroller: pricec,
                      ),
                      DeffultTextfield(
                        hint: 'rate',
                        defultcontroller: ratec,
                      ),
                      DeffultTextfield(
                        hint: 'Image link',
                        defultcontroller: imagec,
                      ),
                      DeffultTextfield(
                        hint: 'Description',
                        defultcontroller: descc,
                        max: 5,
                      ),
                      Container(
                        height: 50,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(
                            16,
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Book.libriry[namec.text] = Book(
                                myurl: imagec.text,
                                name: namec.text,
                                auther: autherc.text,
                                desc: descc.text,
                                prise: double.parse(pricec.text),
                                rate: double.parse(ratec.text));
                          },
                          child: mytext(
                            texty: 'Add',
                            colory: Colors.white,
                            sizy: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

//! ----------------------------------------------------------------

class DeffultTextfield extends StatelessWidget {
  const DeffultTextfield(
      {Key? key,
      required this.hint,
      this.max = 1,
      required this.defultcontroller})
      : super(key: key);

  final String hint;
  final int max;
  final TextEditingController defultcontroller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: defultcontroller,
          maxLines: max,
          decoration: InputDecoration(
            border: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
            hintText: hint,
            hintStyle: const TextStyle(
                fontFamily: 'Poppins', fontSize: 16, color: Colors.grey),
            fillColor: const Color(0xffFFFFFF),
            filled: true,
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}

//! ----------------------------------------------------------------

class DeffultAppbar extends StatelessWidget {
  const DeffultAppbar({
    Key? key,
    required this.onpress,
  }) : super(key: key);

  final Function() onpress;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.keyboard_arrow_left,
        color: Colors.black,
        size: 40,
      ),
      onPressed: onpress,
    );
  }
}
