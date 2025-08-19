class Book {
  String title;
  String author;
  String isbn;
  bool isAvailable;

  Book(this.title, this.author, this.isbn, {this.isAvailable = true});


  @override
  String toString() {
    return 'Title : $title, Author : $author, ISBN : $isbn,\n Available : $isAvailable';
  }
}

