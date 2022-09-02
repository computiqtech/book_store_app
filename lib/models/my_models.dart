

class ModCardOfBook{
  String img;
  String title;
  String prise;
  String auth;
  String rate;
  String dsc;
  int IsCart;
  ModCardOfBook({required this.img,required this.title, required this.auth,required this.prise ,required this.rate,required this.dsc, this.IsCart=1});

}
List<ModCardOfBook> listOfBookCard=[
  ModCardOfBook(img: 'https://m.media-amazon.com/images/I/31Kaxk93VmL._AC_SY580_.jpg',title: 'Letting go',auth: 'david hawkins', rate:'2' ,prise: '29', dsc:'A spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion.',IsCart: 2),
  ModCardOfBook(img: 'https://images-na.ssl-images-amazon.com/images/I/41L9zGuDGHL.jpg',title: 'The Book of Man',auth: 'Osho', rate:'5' ,prise: '33', dsc: 'B spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion.',IsCart: 1),
  ModCardOfBook(img: 'https://images-na.ssl-images-amazon.com/images/I/41ZwJeOY7jL._SX336_BO1,204,203,200_.jpg',title: 'The Book of Life',auth: 'J.Krishnamurti', rate:'4' ,prise: '34', dsc: 'C spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion.',IsCart: 2),
  ModCardOfBook(img: 'https://images-na.ssl-images-amazon.com/images/I/91JxEYMbYbL.jpg',title: 'Why we sleep',auth: 'Matthew Walker', rate:'3' ,prise: '24.99', dsc: 'D spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion.',IsCart: 3),

];