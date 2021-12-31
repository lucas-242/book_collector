import 'package:book_collector/core/modules/books/domain/domain.dart';

class SearchBook {
  final IBookRepository _repository;

  SearchBook({required IBookRepository repository}) : _repository = repository;

  Future<List<Book>> call(
      {required String search, String? category, String? author}) async {
    return await _repository.search(search, category: category, author: author);
  }
}
