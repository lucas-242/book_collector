import 'package:book_collector/core/modules/books/books.dart';
import 'package:book_collector/core/widgets/search_bar_widget.dart';
import 'package:book_collector/modules/search/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();

  static Page page() => const MaterialPage<void>(child: SearchPage());
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: Column(
        children: [
          SearchBar(
            showFiltersButton: false,
            onSubmitted: (searchTerm) =>
                context.read<SearchBloc>().add(SearchBooksEvent(searchTerm)),
          ),
          BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
            if (state is SearchError) {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(
                    content: Text(state.errorMessage ?? 'Error'),
                  ),
                );
            }

            if (state is SearchLoading) {
              return CircularProgressIndicator();
            } else if (state is SearchNoData) {
              return Text('No data');
            } else {
              return Expanded(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: state.books.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: BookTile(
                        book: state.books[index],
                        onTap: () => context
                            .read<SearchBloc>()
                            .add(SelectBookEvent(state.books[index])),
                      ),
                    );
                  },
                ),
              );
            }
          }),
          SizedBox(height: 10)
        ],
      ),
    );
  }
}
