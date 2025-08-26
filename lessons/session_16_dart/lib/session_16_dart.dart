import 'package:session_16_dart/book.dart';
import 'package:session_16_dart/library.dart';
import 'package:session_16_dart/library_member.dart';

void main() {
  var book1 = Book('Monta Carlos', 'Esperentos Cilies', '654321');
  var book2 = Book('Учиртай 3-н толгой', ' Cilies', '445321');
  print(book1);
  print(book2);

  var Bold = LibraryMember('Bold', 'M001');
  // Bold.listBorrowed();
  // Bold.borrowBook(book1);
  // Bold.listBorrowed();

  var lib = Library();

  lib.addBook(book1);
  lib.addBook(book2);
  lib.registerMember(Bold);

  lib.listAvailableBooks();
}
