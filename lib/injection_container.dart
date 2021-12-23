import 'package:book_collector/core/cache/cache.dart';
import 'package:book_collector/modules/login/injector_container.dart' as login;
import 'package:get_it/get_it.dart';

import 'modules/app/app.dart';

final instance = GetIt.instance;

Future<void> init() async {
  instance.registerFactory(() => AppBloc(loginRepository: instance()));
  await login.init();

  //! Core
  instance.registerLazySingleton<CacheClient>(() => CacheClientImpl());

}
