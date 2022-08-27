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
        bookImage: 'https://api.lorem.space/image/book?w=150&h=220&hash=B0E33EF4',
        bookPrice: '\$ 15'),
    BookData(bookName: 'bookName',
        bookAuthor: 'bookAuthor',
        bookDescription: 'bookDescription',
        bookRate: 5,
        bookImage: 'https://api.lorem.space/image/book?w=150&h=220&hash=2D297A22',
        bookPrice: '\$ 15'),
    BookData(bookName: 'bookName',
        bookAuthor: 'bookAuthor',
        bookDescription: 'bookDescription',
        bookRate: 5,
        bookImage: 'https://api.lorem.space/image/book?w=150&h=220&hash=8B7BCDC2',
        bookPrice: '\$ 15'),
    BookData(bookName: 'bookName',
        bookAuthor: 'bookAuthor',
        bookDescription: 'bookDescription',
        bookRate: 1.5,
        bookImage: 'https://api.lorem.space/image/book?w=150&h=220&hash=A89D0DE6',
        bookPrice: '\$ 15'),
    BookData(bookName: 'bookName',
        bookAuthor: 'bookAuthor',
        bookDescription: 'kmoeiwmfomewomewocmwmecome\noimcoiewmciomweocmokewmciomewiocmewoimcioewmciomewiocmoiewmciomewiocmeiowmcioemwciomewiocmeowmcioewmcioewmoicmewoimcoeiwmcoiewmcoimewoicmewoicm',
        bookRate: 5,
        bookImage: 'https://api.lorem.space/image/book?w=150&h=220&hash=BDC01094',
        bookPrice: '\$ 15')
  ];
}
