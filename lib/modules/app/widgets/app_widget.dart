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
    Container(color: Colors.green),
  ];

  void changePage(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: pages[pageIndex],
      ),
      bottomNavigationBar: AppBottomNavigationBar(
        currentPage: pageIndex,
        onTap: (index) => changePage(index),
      ),
    );
  }
}
