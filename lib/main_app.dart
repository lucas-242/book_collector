import 'package:book_collector/modules/book_description/book_description.dart';
import 'package:book_collector/shared/core/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'modules/app/app.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppBloc()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.app,
        routes: {
          // '/splash': (context) => SplashPage(),
          AppRoutes.app: (context) => App(),
          AppRoutes.bookDescription: (context) => BookDescription(),
        },
      ),
    );
  }
}
