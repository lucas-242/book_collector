import 'package:book_collector/modules/collection/data/models/collection_model.dart';
import 'package:book_collector/modules/collection/domain/domain.dart';

abstract class ICollectionDataSource {
  Future<Collection> create(CollectionModel collection);
  Future<void> delete(String collectionId);
}
