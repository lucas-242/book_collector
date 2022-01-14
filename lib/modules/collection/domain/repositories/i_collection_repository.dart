import 'package:book_collector/core/modules/books/books.dart';
import 'package:book_collector/modules/collection/collection.dart';

/// Collection repository
abstract class ICollectionRepository {
  List<Collection> get(String userId);
  void add(Book book);
  void remove(String bookId);
}
