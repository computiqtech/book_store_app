import 'package:get/get.dart';

class Book{
  final RxString nameBook;
  final RxString nameAuther;
  final RxString price;
  final RxString imageNetwork;
  final RxString dscription;
  final RxBool isDone;

  Book(
      String dataBook,
      String dataAuther,
      String dataPrice,
      String dataImageNetwork ,
      String dataDescription,
      [bool? isDone ]
      ):
  nameBook =dataBook.obs,
  nameAuther = dataAuther.obs,
  price = dataPrice.obs,
  imageNetwork = dataImageNetwork.obs,
  dscription = dataDescription.obs,

  isDone = (isDone??false).obs;

  makeAsDone(){
    isDone.value = true;
  }

  static RxList<Book> books =<Book>[].obs;
  static  RxString Q =''.obs;
  static add(String nBook,String nAuther,String nPrice,String nImageLink,String nDescription){

    Book myBook =Book(
         nBook,
         nAuther,
         nPrice,
         nImageLink,
         nDescription);

    books.add(myBook);

  }

}