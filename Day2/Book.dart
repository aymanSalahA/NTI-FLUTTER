class Book {
  int id;
  String name;
  String category;
  int numOfPages;
  String author;
  bool isFree;

  Book(
    this.id,
    this.name,
    this.category,
    this.numOfPages,
    this.author,
    this.isFree,
  );
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
  }

  void addBooks(List<Book> bookList) {
    books.addAll(bookList);
  }

  void displayBooks() {
    for (Book book in books) {
      print("""
      ID: ${book.id}, Name: ${book.name}, Category: ${book.category}, Pages: ${book.numOfPages}, Author: ${book.author}, Free: ${book.isFree}
""");
    }
  }

  bool searchBook(String name) {
    for (Book book in books) {
      if (book.name == name) {
        return true;
      }
    }
    return false;
  }

  void deleteBook(String name) {
    if (searchBook(name)) {
      for (int i = 0; i < books.length; i++) {
        if (books[i].name == name) {
          books.removeAt(i);
          print("Book deleted.");
          break;
        }
      }
    } else {
      print("Book not found.");
    }
  }
}

void main() {
  Library lib = Library();
  Book book1 = Book(1, "C", "Programming", 200, "Ayman", false);
  Book book2 = Book(2, "Flutter", "Mobile", 300, "Jaxon", true);
  Book book3 = Book(2, "PHP", "Backend", 400, "Sam", false);
  lib.addBook(book1);
  lib.addBooks([book2, book3]);
  lib.displayBooks();
  lib.searchBook("PHP") ? print("Found") : print("Not Found");
  lib.searchBook("Java") ? print("Found") : print("Not Found");
  lib.deleteBook("PHP");
  lib.deleteBook("java");
  // NOTE: I know there is case sensistive and many points not implemented here
}
