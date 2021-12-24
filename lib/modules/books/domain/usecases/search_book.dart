import 'package:book_collector/modules/books/books.dart';

class SearchBook {
  final BookRepository _repository;

  SearchBook({required BookRepository repository}) : _repository = repository;

  Future<List<Book>> call(
      {required String search, String? category, String? author}) async {
    return await _repository.search(search, category: category, author: author);
  }
}
