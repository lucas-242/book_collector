import 'package:book_collector/modules/books/books.dart';

class BookRepositoryImpl implements BookRepository {
  final BookDatasource _bookDatasource;

  BookRepositoryImpl(BookDatasource datasource) : _bookDatasource = datasource;

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
  Future<List<Book>> search(String search, {String? category, String? author}) {
    return _bookDatasource.search(search);
  }

  @override
  Future<Book> update(Book book) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
