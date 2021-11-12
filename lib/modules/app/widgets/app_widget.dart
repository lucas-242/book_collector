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
  @override
  Widget build(BuildContext context) {
    var appBloc = context.watch<AppBloc>();
    SizeConfig(context, kBottomNavigationBarHeight);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: [
          Container(color: Colors.amber,),
          Container(color: Colors.green,),
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
