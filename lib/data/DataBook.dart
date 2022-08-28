import 'package:get/get.dart';

class DataBook{
  final RxBool isCart;
  final String name;
  final String auther_name;
  final String price;
  final String image;
  final String descrption;


  DataBook(this.name, this.auther_name, this.price, this.image, this.descrption, [bool ? isCart])
      :isCart=(isCart??false).obs;

  static RxList<DataBook> Book=<DataBook>[].obs;
  cartIt(){
    isCart.value=true;
  }
  static add(String name,String auther_name,String price,String image,String descrption){

    Book.add(DataBook(name,auther_name, price,image,descrption,));}

}