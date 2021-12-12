import 'package:book_collector/modules/app/view/app_shell.dart';
import 'package:book_collector/modules/login/login.dart';
import 'package:book_collector/shared/models/models.dart';
import 'package:flutter/widgets.dart';

List<Page> onGenerateAppViewPages(AppStatus state, List<Page<dynamic>> pages) {
  switch (state) {
    case AppStatus.authenticated:
      return [AppShell.page()];
    case AppStatus.unauthenticated:
    default:
      return [LoginPage.page()];
  }
}