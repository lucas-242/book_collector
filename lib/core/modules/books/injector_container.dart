import 'package:book_collector/core/modules/books/books.dart';
import 'package:book_collector/core/modules/books/data/repositories/book_repository.dart';
import 'package:get_it/get_it.dart';

final instance = GetIt.instance;

Future<void> init() async {
  // Use Cases
  instance.registerLazySingleton(() => SearchBook(bookRepository: instance()));

  // Repositories
  instance
      .registerLazySingleton<IBookRepository>(() => BookRepository(instance()));

  // Datasources
  instance
      .registerLazySingleton<IBookDatasource>(() => GoogleBooksDataSource());
}
