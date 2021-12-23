import 'package:book_collector/modules/books/books.dart';
import 'package:book_collector/core/extensions/extensions.dart';

class SearchBook {
  final BookRepository _repository;

  SearchBook({required BookRepository repository}) : _repository = repository;

  Future<List<Book>> call(
      {String? name, String? category, String? author}) async {
    //TODO: create exception
    if (name.isNullOrEmpty() &&
        category.isNullOrEmpty() &&
        author.isNullOrEmpty()) throw Exception();
        
    return await _repository.search(
        name: name, category: category, author: author);
  }
}
