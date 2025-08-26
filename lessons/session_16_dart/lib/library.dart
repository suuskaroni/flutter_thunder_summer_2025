import 'package:session_16_dart/book.dart';
import 'package:session_16_dart/library_member.dart';

class Library {
  List<Book> books = [];
  List<LibraryMember> members = [];

  Library();

  void addBook(Book book) {
    books.add(book);
    print('Added ${book.title} added to the library.');
  }

  void registerMember(LibraryMember librarymember) {
    members.add(librarymember);
    print('Registered ${librarymember.name} as a library member.');
  }

  void listAvailableBooks() {
    print('Танд санал болгох боломжтой номын жагсаалт');
    if (books.isNotEmpty) {
      for (int i = 0; i < books.length; i++) {
        print('- ${books[i].title}');
      }
    }
  }
}
