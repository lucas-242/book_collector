import 'package:book_collector/modules/search/search.dart';
import 'package:get_it/get_it.dart';

final instance = GetIt.instance;

Future<void> init() async {
// Blocs and Cubits
  instance.registerFactory(
    () => SearchBloc(searchBook: instance()),
  );
}
