import 'package:flutter/foundation.dart';

class AppBloc extends ChangeNotifier {
  int _currentPageIndex = 0;
  int get currentPageIndex => _currentPageIndex;

  AppBloc();

  void changePage(int pageIndex) {
    _currentPageIndex = pageIndex;
    notifyListeners();
  }
}
