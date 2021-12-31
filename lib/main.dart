import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import './injection_container.dart' as di;
import 'modules/app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await di.init();
  BlocOverrides.runZoned(
    () => runApp(AppProvider()),
    blocObserver: AppBlocObserver(),
  );
}
