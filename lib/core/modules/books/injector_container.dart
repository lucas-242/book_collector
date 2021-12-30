import 'package:book_collector/core/modules/books/books.dart';
import 'package:book_collector/core/modules/books/data/repositories/book_repository_impl.dart';
import 'package:get_it/get_it.dart';

final instance = GetIt.instance;

Future<void> init() async {
  // Use Cases
  instance.registerLazySingleton(() => SearchBook(repository: instance()));

  // Repositories
  instance.registerLazySingleton<BookRepository>(() =>
      BookRepositoryImpl(instance()));

  // Datasources
  instance.registerLazySingleton<BookDatasource>(() => GoogleBooksDataSourceImpl());
}
