import 'package:get/get.dart';

import 'models/book.dart';

class DataSource {
  static RxList<Book> localBooks = <Book>[
    Book(
      title: "A Tale of Two Cities",
      author: "Charles Dickens",
      cover: "https://api.lorem.space/image/book?w=150&h=220&hash=8B7BCDC1",
      rate: 5.0,
      price: 99.99,
      description:
          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC.",
    ),
    Book(
      title: "The Little Prince",
      author: "Antoine de Saint-Exupéry",
      cover: "https://api.lorem.space/image/book?w=150&h=220&hash=8B7BCDC2",
      rate: 4.3,
      price: 46.99,
      description:
          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC.",
    ),
    Book(
      title: "Harry Potter and the Philosopher's Stone",
      author: "J.K.Rowling",
      cover: "https://api.lorem.space/image/book?w=150&h=220&hash=8B7BCDC3",
      rate: 3.0,
      price: 64.99,
      description:
          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC.",
    ),
    Book(
      title: "Mockingjay",
      author: "Suzanne Collins",
      cover: "https://api.lorem.space/image/book?w=150&h=220&hash=8B7BCDC4",
      rate: 4.0,
      price: 52.99,
      description:
          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC.",
    ),
    Book(
      title: "Me Before You",
      author: "Jojo Moyes",
      cover: "https://api.lorem.space/image/book?w=150&h=220&hash=8B7BCDC5",
      rate: 4.9,
      price: 30.99,
      description:
          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC.",
    ),
    Book(
      title: "Harry Potter and the Philosopher's Stone",
      author: "J.K.Rowling",
      cover: "https://api.lorem.space/image/book?w=150&h=220&hash=8B7BCDC6",
      rate: 3.0,
      price: 64.99,
      description:
          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC.",
    ),
  ].obs;

  static RxList<Book> cartItems = <Book>[
    Book(
      title: "Me Before You",
      author: "Jojo Moyes",
      cover: "https://api.lorem.space/image/book?w=150&h=220&hash=8B7BCDC5",
      rate: 4.9,
      price: 30.99,
      description:
          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC.",
    ),
    Book(
      title: "Harry Potter and the Philosopher's Stone",
      author: "J.K.Rowling",
      cover: "https://api.lorem.space/image/book?w=150&h=220&hash=8B7BCDC6",
      rate: 3.0,
      price: 64.99,
      description:
          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC.",
    ),
  ].obs;
}
