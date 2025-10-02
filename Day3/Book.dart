import 'dart:convert';

class Book {
  final int id;
  final String title;
  final String category;
  final String author;

  Book({
    required this.id,
    required this.title,
    required this.category,
    required this.author,
  });

  factory Book.fromJson(Map<String, dynamic> map) {
    return Book(
      id: map['id'],
      title: map['title'],
      category: map['category'],
      author: map['author'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'title': title, 'category': category, 'author': author};
  }
}

void main() {
  String bookJsonString = """
  {
    "id": 1,
    "title": "Book title",
    "category": "Programming",
    "author": "Ayman"
  }
  """;

  Map<String, dynamic> bookMap = jsonDecode(bookJsonString);
  Book myBook = Book.fromJson(bookMap);

  print('1 : printing object');
  print(myBook);
  Map<String, dynamic> bookToJsonMap = myBook.toJson();

  print('2:printing json');
  print(bookToJsonMap);
}
