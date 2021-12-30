import 'package:book_collector/core/blocs/blocs.dart';
import 'package:book_collector/core/models/models.dart';
import 'package:book_collector/core/themes/themes.dart';
import 'package:book_collector/modules/app/app.dart';
import 'package:book_collector/modules/collection/collection.dart';
import 'package:book_collector/modules/home/home.dart';
import 'package:book_collector/modules/search/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


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
        return SearchPage();
      case AppTab.collection:
        return CollectionPage();
      default:
        return HomePage();
    }
  }
}
