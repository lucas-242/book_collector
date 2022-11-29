import 'package:book_collector/core/cache/cache.dart';
import 'package:book_collector/modules/login/injector_container.dart' as login;
import 'package:book_collector/modules/search/injector_container.dart' as search;
import 'package:book_collector/core/modules/books/injector_container.dart' as books;
import 'package:get_it/get_it.dart';

import 'modules/app/app.dart';

final instance = GetIt.instance;

Future<void> init() async {
  instance.registerFactory(() => AppBloc(loginRepository: instance()));
  await login.init();
  await books.init();
  await search.init();

  //! Core
  instance.registerLazySingleton<CacheClient>(() => CacheClientImpl());
}
