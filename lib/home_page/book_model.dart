import 'package:get/get.dart';
class Book{
  final String title;
  final String author;
  final String price,imgPath,desc;
  final RxBool inCart,isSaved;
  //Book(this.title, this.author, this.price, this.imgPath, this.desc, [this.inCart]);
  Book(String tit,String auth,String p,String img,String de,[bool? inCart,bool? isSaved])
      :inCart = (inCart??false).obs,
        isSaved= (isSaved??false).obs,
      title=tit,
      author=auth,
      price=p,
      imgPath=img,
      desc=de;


  static RxList<Book> books=<Book>[].obs;
  static add(String title,String author,String price,String imgPath,String desc,RxBool incart){
    if (incart.value==null)
      incart.value=false;
    books.add(Book(title,author,price,imgPath,desc));
  }
  addToCart(){
    inCart.value=true;
  }
  removeFromCart(){
    inCart.value=false;
  }
  makeItSaved(){
    isSaved.value=true;
  }
  removeFromSaved(){
    isSaved.value=false;
  }

}