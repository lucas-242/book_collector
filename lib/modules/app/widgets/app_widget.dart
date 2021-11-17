import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/modules/app/app.dart';
import '/modules/book_description/book_description.dart';
import '/shared/core/app_routes.dart';
import '/shared/themes/themes.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppBloc()),
      ],
      child: AdaptiveTheme(
        light: AppThemes.lightTheme,
        dark: AppThemes.darkTheme,
        initial: AdaptiveThemeMode.light,
        builder: (lightTheme, darkTheme) => MaterialApp(
          title: 'Book Collector',
          theme: lightTheme,
          darkTheme: darkTheme,
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.app,
          routes: {
            // '/splash': (context) => SplashPage(),
            AppRoutes.app: (context) => AppShell(),
            AppRoutes.bookDescription: (context) => BookDescription(),
          },
        ),
      ),
    );
  }
}
