import 'package:book_collector/modules/books/books.dart';
import 'package:book_collector/modules/books/data/repositories/book_repository_impl.dart';
import 'package:get_it/get_it.dart';

final instance = GetIt.instance;

Future<void> init() async {
  // Blocs and Cubits
  instance.registerFactory(
    () => BooksBloc(searchBook: instance()),
  );

  // Use Cases
  instance.registerLazySingleton(() => SearchBook(repository: instance()));

  // Repositories
  instance.registerLazySingleton<BookRepository>(() =>
      BookRepositoryImpl(instance()));

  // Datasources
  instance.registerLazySingleton<BookDatasource>(() => GoogleBooksDataSourceImpl());
}
