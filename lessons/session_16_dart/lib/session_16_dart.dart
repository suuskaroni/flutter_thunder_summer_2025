import 'package:session_16_dart/book.dart';
import 'package:session_16_dart/library_member.dart';

void main() {
  var book1 = Book('The Great Gatsby','F. Scott Fitzgerald', '123456');
  print(book1);
  

  var Bold = LibraryMember('Bold', 'M001');
  Bold.listBorrowed();
  Bold.borrowBook(book1);
  Bold.listBorrowed();


}