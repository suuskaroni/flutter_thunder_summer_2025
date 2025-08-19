import 'package:session_16_dart/book.dart';

class LibraryMember {
  String name;
  String memberId;
  List<Book> borrowedBooks = [];

  LibraryMember(this.name, this.memberId);

  void borrowBook(Book book) {
    if (book.isAvailable) {
      book.isAvailable = false;
      borrowedBooks.add(book);
      print('Amjilttai zeellee');
    } else {
      print('Sorry, ${book.title} is not available');
    }
  }

  void returnBook(Book book) {
    if (borrowedBooks.contains(book)) {
      book.isAvailable = false;
      borrowedBooks.remove(book);
      print('$name successfully returned ${book.title}');
    } else {
      print("${book.title} wasn't borrowed by $name");
    }
  }

  void listBorrowed() {
    print("$name's borrowed books : \n");
    if (borrowedBooks.isNotEmpty) {
      for (int i = 0; i < borrowedBooks.length; i++) {
        print('- ${borrowedBooks[i].title}');
      }
    }
  }
}
