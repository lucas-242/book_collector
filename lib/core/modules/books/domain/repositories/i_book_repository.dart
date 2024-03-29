import 'package:book_collector/core/modules/books/domain/domain.dart';

abstract class IBookRepository {
  Future<List<Book>> get();
  Future<Book> getById(String id);
  Future<List<Book>> search(String search, {String? category, String? author});
  Future<Book> create(Book book);
  Future<void> delete(String id);
  Future<Book> update(Book book);
}
