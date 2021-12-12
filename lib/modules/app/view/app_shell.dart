import 'package:book_collector/modules/home/home.dart';
import 'package:book_collector/shared/blocs/blocs.dart';
import 'package:book_collector/shared/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/modules/app/app.dart';
import '/modules/collection/collection.dart';
import '/shared/themes/themes.dart';

class AppShell extends StatelessWidget {
  const AppShell();

  static Page page() => const MaterialPage<void>(child: AppShell());

  @override
  Widget build(BuildContext context) {
    SizeConfig(context, kBottomNavigationBarHeight);

    return BlocBuilder<TabBloc, AppTab>(
      builder: (context, activeTab) {
        return Scaffold(
          body: body(activeTab),
          bottomNavigationBar: AppBottomNavigationBar(
            activeTab: activeTab,
            onTabSelected: (tab) => context.read<TabBloc>().add(UpdateTab(tab)),
          ),
        );
      },
    );
  }

  Widget body(AppTab activeTab) {
    switch (activeTab) {
      case AppTab.search:
        return Container(color: Colors.amber);
      case AppTab.books:
        return CollectionPage();
      default:
        return HomePage();
    }
  }
}
