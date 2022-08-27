class Book{
  final String title;
  final String author;
  final String price,imgPath;
  Book(this.title, this.author, this.price, this.imgPath);

  static List<Book> books=[];
  static add(String title,String author,String price,String imgPath){
    books.add(Book(title,author,price,imgPath));
  }
}