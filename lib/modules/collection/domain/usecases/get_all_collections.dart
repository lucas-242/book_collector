import 'package:book_collector/modules/collection/domain/domain.dart';

class GetAllCollections {
  final ICollectionRepository _collectionRepository;

  GetAllCollections({required ICollectionRepository collectionRepository})
      : _collectionRepository = collectionRepository;

  Future<List<Collection>> call(String userId) async {
    return await _collectionRepository.get(userId);
  }
}
