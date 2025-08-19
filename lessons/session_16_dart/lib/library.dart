import 'package:session_16_dart/book.dart';
import 'package:session_16_dart/library_member.dart';

class Library {
  List<Book> books = [];
  List<LibraryMember> members = [];

  Library();

  void addBook(Book book) {
    books.add(book);
    print('Added ${book.title}');
  }
}
