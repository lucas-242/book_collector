import 'package:book_collector/modules/login/login_page.dart';
import 'package:book_collector/modules/splash_page/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/modules/app/app.dart';
import '/modules/collection/collection.dart';
import '/shared/themes/themes.dart';

class AppShell extends StatefulWidget {
  const AppShell({Key? key}) : super(key: key);

  @override
  _AppShellState createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  @override
  Widget build(BuildContext context) {
    var appBloc = context.watch<AppBloc>();
    SizeConfig(context, kBottomNavigationBarHeight);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.amber,
            child: Column(
              children: [
                TextButton(
                  child: Text('splash'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SplashPage(),
                      ),
                    );
                  },
                ),
                TextButton(
                  child: Text('login'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Container(
            color: Colors.green,
          ),
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
