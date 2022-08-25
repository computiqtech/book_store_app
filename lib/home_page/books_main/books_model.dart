class BookData{
  final String bookName;
  final double bookRate;
  final String bookAuthor;
  final String bookDescription;
  final String bookImage;
  final String bookPrice;

  BookData({
    required this.bookPrice,
    required this.bookName,
    required this.bookAuthor,
    required this.bookDescription,
    required this.bookRate,
    required this.bookImage
  });

  static List<BookData> books = [
    BookData(bookName: 'bookName',
        bookAuthor: 'bookAuthor',
        bookDescription: 'bookDescription',
        bookRate: 3.5,
        bookImage: 'https://api.lorem.space/image/book?w=150&h=220',
        bookPrice: '19 \$'),
    BookData(bookName: 'bookName',
        bookAuthor: 'bookAuthor',
        bookDescription: 'bookDescription',
        bookRate: 5,
        bookImage: 'https://api.lorem.space/image/book?w=150&h=220',
        bookPrice: '15 \$'),
    BookData(bookName: 'bookName',
        bookAuthor: 'bookAuthor',
        bookDescription: 'bookDescription',
        bookRate: 5,
        bookImage: 'https://api.lorem.space/image/book?w=150&h=220',
        bookPrice: '15 \$'),
    BookData(bookName: 'bookName',
        bookAuthor: 'bookAuthor',
        bookDescription: 'bookDescription',
        bookRate: 5,
        bookImage: 'https://api.lorem.space/image/book?w=150&h=220',
        bookPrice: '15 \$'),
    BookData(bookName: 'bookName',
        bookAuthor: 'bookAuthor',
        bookDescription: 'bookDescription',
        bookRate: 5,
        bookImage: 'https://api.lorem.space/image/book?w=150&h=220',
        bookPrice: '15 \$')
  ];
}
