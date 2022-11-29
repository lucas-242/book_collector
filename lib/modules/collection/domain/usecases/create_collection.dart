import 'package:book_collector/modules/collection/domain/domain.dart';

class CreateCollection {
  final ICollectionRepository _collectionRepository;

  CreateCollection({required ICollectionRepository collectionRepository})
      : _collectionRepository = collectionRepository;

  Future<Collection> call({
    required String name,
    bool isPublic = false,
  }) async {
    var collection = Collection(
      id: '',
      name: name,
      isPublic: isPublic,
    );
    return await _collectionRepository.create(collection);
  }
}
