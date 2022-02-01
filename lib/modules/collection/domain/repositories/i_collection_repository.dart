import 'package:book_collector/modules/collection/domain/domain.dart';

/// Collection repository
abstract class ICollectionRepository {
  Future<void> addBooks(List<String> bookId);
  Future<Collection> create(Collection collection);
  Future<void> delete(String collectionId);
  Future<List<Collection>> get(String userId);
  Future<Collection> getById(String userId, String collectionId);
  Future<void> removeBooks(List<String> bookId);
}
