import 'package:book_collector/core/modules/books/books.dart';
import 'package:equatable/equatable.dart';

class Collection extends Equatable {
  final String id;
  final String name;
  final List<Book> books;
  final bool isPublic;
  final List<String>? sharedUsers;

  Collection({
    required this.id,
    required this.name,
    books,
    this.isPublic = false,
    this.sharedUsers,
  }) : this.books = books ?? [];

  @override
  List<Object?> get props => [
        id,
        name,
        books,
        isPublic,
        sharedUsers,
      ];
}
