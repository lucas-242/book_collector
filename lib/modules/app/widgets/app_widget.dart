import 'package:book_collector/modules/collection/collection.dart';
import 'package:book_collector/shared/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../app.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  late AppBloc appBloc;

  @override
  Widget build(BuildContext context) {
    appBloc = context.watch<AppBloc>();
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: [
          Container(),
          Container(),
          CollectionPage(),
        ][appBloc.currentPageIndex],
      ),
      bottomNavigationBar: AppBottomNavigationBar(
        currentPage: appBloc.currentPageIndex,
        onTap: (index) => appBloc.changePage(index),
      ),
    );
  }
}
