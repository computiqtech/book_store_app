import 'package:book_store_app/modules/book_module.dart';import 'package:book_store_app/page_description/book_info.dart';import 'package:book_store_app/page_main/list_book_layout.dart';import 'package:flutter/material.dart';import 'package:get/get.dart';class SearchList extends StatelessWidget {  const SearchList({Key? key}) : super(key: key);  @override  Widget build(BuildContext context) {    return Expanded(      child: Obx(() {        return Padding(          padding: const EdgeInsets.only(left: 20),          child: ListView(            scrollDirection: Axis.vertical,            shrinkWrap: true,            children: BookModule.books                .where(                    (e) => e.nameBook.value.toLowerCase().contains(BookModule.search) == true)                .map(                  (e) => GestureDetector(                    onTap: () {                      Get.to(() => BookInfo(book: e));                    },                    child: ListBookLayout(book: e),                  ),                )                .toList(),          ),        );      }),    );  }}