import 'package:book_collector/core/models/models.dart';
import 'package:book_collector/modules/app/app.dart';
import 'package:book_collector/modules/login/login.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  List<Page> onGenerateAppViewPages(
      AppStatus state, List<Page<dynamic>> pages) {
    switch (state) {
      case AppStatus.authenticated:
        return [AppShell.page()];
      case AppStatus.unauthenticated:
      default:
        return [LoginPage.page()];
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FlowBuilder<AppStatus>(
        state: context.select((AppBloc bloc) => bloc.state.status),
        onGeneratePages: onGenerateAppViewPages,
      ),
    );
  }
}
