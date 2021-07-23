import 'package:book_collector/modules/book_description/book_description.dart';
import 'package:flutter/material.dart';

import 'modules/app/app.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/app',
      routes: {
        // '/splash': (context) => SplashPage(),
        '/app': (context) => App(),
        '/book-description': (context) => BookDescription(),
      },
    );
  }
}
