import 'package:book_collector/modules/books/books.dart';

abstract class BookDatasource {
  Future<List<Book>> search(String searchTerms);
}
