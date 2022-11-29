import 'package:book_collector/modules/collection/domain/domain.dart';

class GetOneCollection {
  final ICollectionRepository _collectionRepository;

  GetOneCollection({required ICollectionRepository collectionRepository})
      : _collectionRepository = collectionRepository;

  Future<Collection> call(String userId, String collectionId) async {
    return await _collectionRepository.getById(userId, collectionId);
  }
}
