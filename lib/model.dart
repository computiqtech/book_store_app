import 'dart:math';

import 'package:book_store_app/page1/ListView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Books {
  static List<Books> bookList = [
    Books(
        "The Hating Game".obs,
        'Sally Thorne'.obs,
        '5.99'.obs,
        'https://i.ibb.co/0ZcdR83/11.jpg'.obs,
        'A spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion.'
            .obs,
        isBuy: false.obs,
        isClickted: false.obs,
        myFavorite: false.obs),
    Books(
        'Shatter Me'.obs,
        'Tahereh M'.obs,
        '6.99'.obs,
        'https://i.ibb.co/4p1g3St/22.jpg'.obs,
        'A spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion.'
            .obs,
        isBuy: false.obs,
        isClickted: false.obs,
        myFavorite: false.obs),
    Books(
        'Then She Was Gone'.obs,
        'Lisa Jewell'.obs,
        '7.99'.obs,
        'https://i.ibb.co/pR8jV6q/33.png'.obs,
        'A spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion.'
            .obs,
        isBuy: false.obs,
        isClickted: false.obs,
        myFavorite: false.obs),


    Books(
        'HARRY POTTER'.obs,
        'J.K Rowling'.obs,
        '6.99'.obs,
        'https://i.ibb.co/ChZx8J8/photo-2022-08-26-03-13-51-2.jpg'.obs,
        'A spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion.'
            .obs,
        isBuy: false.obs,
        isClickted: false.obs,
        myFavorite: false.obs),
    Books(
        'HARRY POTTER'.obs,
        'J.K Rowling'.obs,
        '4.99'.obs,
        'https://i.ibb.co/zxSZz3T/photo-2022-08-26-03-13-52.jpg'.obs,
        'A spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion.'
            .obs,
        isBuy: false.obs,
        isClickted: false.obs,
        myFavorite: false.obs),
    Books(
        'Siege and Storm'.obs,
        'Leigh Bardugo'.obs,
        '4.99'.obs,
        'https://i.ibb.co/jgs4xWS/44.png'.obs,
        'A spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion.'
            .obs,
        isBuy: false.obs,
        isClickted: false.obs,
        myFavorite: false.obs),

    Books(
        'Dracula'.obs,
        'Bram Stoker'.obs,
        '4.99'.obs,
        'https://i.ibb.co/rkLHRbW/55.jpg'.obs,
        'A spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion.A spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion.A spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion.'
            .obs,
        isBuy: false.obs,
        isClickted: false.obs,
        myFavorite: false.obs),





  ];
  final RxString bookName;
  final RxString authorName;
  final RxString price;
  final RxString imageLink;
  final RxString description;
  final RxBool isBuy;
  final RxBool isClickted;
  final RxBool myFavorite;

  Books(this.bookName, this.authorName, this.price, this.imageLink,
      this.description,
      {required this.isBuy,
      required this.isClickted,
      required this.myFavorite});

  static final RxBool isLoading = false.obs;
  static final RxString typed = ''.obs;
  static final RxBool found = false.obs;

  static Loading() async {
    isLoading.value = true;

    typed.value = '';
    isLoading.value = false;
  }

  Future<bool> sendRequest() async {
    await Future.delayed(Duration(seconds: 2));
    if (typed.value.length < 5) return false;
    return true;
  }

  makeBuy() {
    isBuy.value = true;
  }

  makeClickted() {
    isClickted.value = true;
  }

  makeAsDone() {
    if (myFavorite.value == false) {
      myFavorite.value = true;
    } else {
      myFavorite.value = false;
    }
  }
}
