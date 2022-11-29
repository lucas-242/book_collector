import 'package:book_collector/core/modules/books/books.dart';
import 'package:book_collector/modules/search/search.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchFlow extends StatelessWidget {
  const SearchFlow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlowBuilder<SearchState>(
      state: context.select((SearchBloc bloc) => bloc.state),
      onGeneratePages: (state, pages) => onGenerateSearchPages(state, context),
    );
  }

  List<Page> onGenerateSearchPages(SearchState state, BuildContext context) {
    return [
      SearchPage.page(),
      if (state.bookSelected != null)
        BookDetailsPage.page(
          state.bookSelected!,
          () {
            context.read<SearchBloc>().add(SelectBookEvent(null));
          },
        ),
    ];
  }
}
