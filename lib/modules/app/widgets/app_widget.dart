import 'package:book_collector/modules/collection/collection.dart';
import 'package:book_collector/shared/themes/themes.dart';
import 'package:flutter/material.dart';

import '../app.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  var pageIndex = 0;

  var pages = [
    Container(color: Colors.amber),
    Container(color: Colors.blue),
    CollectionPage()
  ];

  void changePage(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: pages[pageIndex],
        ),
        bottomNavigationBar: AppBottomNavigationBar(
          currentPage: pageIndex,
          onTap: (index) => changePage(index),
        ),
      ),
    );
  }
}
