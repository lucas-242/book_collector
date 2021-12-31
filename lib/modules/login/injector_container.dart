import 'package:book_collector/modules/login/data/datasources/login_datasource.dart';
import 'package:book_collector/modules/login/login.dart';
import 'package:get_it/get_it.dart';

final instance = GetIt.instance;

Future<void> init() async {
  // Blocs and Cubits
  instance.registerFactory(
    () => LoginCubit(
      loginWithEmail: instance(),
      loginWithGoogle: instance(),
    ),
  );

  // Use Cases
  instance.registerLazySingleton(() => LoginWithEmail(repository: instance()));
  instance.registerLazySingleton(() => LoginWithGoogle(repository: instance()));

  // Repositories
  instance.registerLazySingleton<ILoginRepository>(() =>
      LoginRepository(cache: instance(), loginDatasource: instance()));

  // Datasources
  instance.registerLazySingleton<ILoginDatasource>(() => LoginDatasource());
}
