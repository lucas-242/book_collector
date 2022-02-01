import 'package:book_collector/core/modules/books/domain/domain.dart';

class SearchBook {
  final IBookRepository _bookRepository;

  SearchBook({required IBookRepository bookRepository})
      : _bookRepository = bookRepository;

  Future<List<Book>> call(
      {required String search, String? category, String? author}) async {
    return await _bookRepository.search(search,
        category: category, author: author);
  }
}
