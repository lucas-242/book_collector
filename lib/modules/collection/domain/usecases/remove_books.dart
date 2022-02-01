import 'package:book_collector/modules/collection/domain/domain.dart';

class RemoveBooks {
  final ICollectionRepository _collectionRepository;

  RemoveBooks({required ICollectionRepository collectionRepository})
      : _collectionRepository = collectionRepository;

  Future<void> call(List<String> bookIds) async {
    return await _collectionRepository.removeBooks(bookIds);
  }
}
