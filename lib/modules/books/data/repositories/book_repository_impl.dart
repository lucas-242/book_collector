import 'package:book_collector/modules/books/books.dart';

class BookRepositoryImpl implements BookRepository {
  @override
  Future<Book> create(Book book) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<void> delete(String id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<Book>> get() {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<Book> getById(String id) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  Future<List<Book>> search({String? name, String? category, String? author}) {
    // TODO: implement search
    throw UnimplementedError();
  }

  @override
  Future<Book> update(Book book) {
    // TODO: implement update
    throw UnimplementedError();
  }

}