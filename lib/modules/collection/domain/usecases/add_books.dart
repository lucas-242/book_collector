import 'package:book_collector/modules/collection/domain/domain.dart';

class AddBooks {
  final ICollectionRepository _collectionRepository;

  AddBooks({required ICollectionRepository collectionRepository})
      : _collectionRepository = collectionRepository;

  Future<void> call(List<String> bookIds) async {
    return await _collectionRepository.addBooks(bookIds);
  }
}
