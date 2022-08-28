import 'package:get/get.dart';
class Books{
  final String bookName;
  final String auther;
  final String description;
  final String image;
  final String price;
  final RxBool isSelect;

  Books({required this.bookName, required this.auther,
    required this.price,required this.description ,required this.image,bool? isSelect})
  : isSelect = (isSelect??false).obs;
  static RxList<Books> book =<Books>[
    Books(bookName: 'Forty Rules Of Love', auther: 'Elif Shafak', price: '21.99',
        description: 'Ella Rubenstein is forty years old and unhappily married when she takes a job as a reader for a literary agent. '
            'Her first assignment is to read and report on Sweet Blasphemy, a novel written by a man named Aziz Zahara.',
        image: 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1442161289i/6642715.jpg'),
    Books(bookName: 'THE WRITER\'S SECRET LIFE', auther: 'Guillaume Musso ', price: '39.99',
        description: 'In 1999, after publishing three cult novels, famous author Nathan Fawles announces the end of his writing career and withdraws to Beaumont,'
            ' a wild and beautiful island off the Mediterranean coast.Autumn 2018.Over the past twenty years, Fawles has not given a single interview.'
            ' As his novels continue to captivate readers, Mathilde Monney, a young Swiss journalist, arrives on the island,determined to unlock his secrets.',
        image: 'https://www.guillaumemusso.com/sites/default/files/images/livres/couv/9782702165485-001-T.jpeg'),
    Books(bookName: 'The Midnight Library', auther: 'Matt Haig', price: '24.99',
        description: 'Between life and death there is a library, and within that library, the shelves go on forever.'
            ' Every book provides a chance to try another life you could have lived. To see how things would be if you had made other choices . '
            ' Would you have done anything different, if you had the chance to undo your regrets?',
        image: 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1602190253i/52578297.jpg'),
    Books(bookName: 'Atomic Habits', auther: 'James Clear', price: '15.00',
        description: 'No matter your goals, Atomic Habits offers a proven framework for improving—every day. James Clear, one of the world\'s leading experts on habit formation, '
            'reveals practical strategies that will teach you exactly how to form good habits, break bad ones, '
            'and master the tiny behaviors that lead to remarkable results.',
        image: 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1655988385i/40121378.jpg'),
    Books(bookName: 'Animal Farm', auther: 'George Orwell', price: '10.00',
        description: 'A farm is taken over by its overworked, mistreated animals. With flaming idealism and stirring slogans, '
            'they set out to create a paradise of progress, justice, and equality. Thus the stage is set for one of the most'
            ' telling satiric fables ever penned –a razor-edged fairy tale for grown-ups that records the evolution from revolution against '
            'tyranny to a totalitarianism just as terrible',
        image: 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1325861570i/170448.jpg'),
  ].obs;

  static RxString typed=''.obs;
  makeAsSelect(){
    isSelect.value=true;
  }
  
}