import 'package:book_collector/core/modules/books/books.dart';

abstract class IBookDatasource {
  Future<List<Book>> search(String searchTerms);
}
