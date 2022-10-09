// ignore_for_file: public_member_api_docs, sort_constructors_first
//ДОМАШКА 15го урока
void main(List<String> args) {
  final book1 = Book(author: "Aitmatov", nameOfBook: "Ak keme");
  final book2 = Book(author: "Bunin", nameOfBook: "Nebo");
  final LibraryUser emil = LibraryUser(
      fio: "Emil ",
      ticketNumber: 001823,
      faculty: "IT",
      birthday: DateTime(1999, 11, 9),
      phoneNumber: "0778005620");

  emil.takeBook([book1, book2]);
}

class LibraryUser {
  final String fio;
  final int ticketNumber;
  final String faculty;
  final DateTime birthday;
  final String phoneNumber;

  LibraryUser({
    required this.fio,
    required this.ticketNumber,
    required this.faculty,
    required this.birthday,
    required this.phoneNumber,
  });

  takeBook(List<Book> books) {
    print("$fio взял ${books.length} книги");
  }
}

class Book {
  final String author;
  final String nameOfBook;
  Book({
    required this.author,
    required this.nameOfBook,
  });
}
