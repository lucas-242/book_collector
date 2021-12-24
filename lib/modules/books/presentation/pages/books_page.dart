import 'package:book_collector/core/routes/app_routes.dart';
import 'package:book_collector/core/widgets/search_bar_widget.dart';
import 'package:book_collector/modules/books/presentation/bloc/books_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/book_tile_widget.dart';

class BooksPage extends StatefulWidget {
  const BooksPage({Key? key}) : super(key: key);

  @override
  _BooksPageState createState() => _BooksPageState();

  // static Page page() => const MaterialPage<void>(child: BooksPage());
}

class _BooksPageState extends State<BooksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Books'),
      ),
      body: Column(
        children: [
          SearchBar(
            showFiltersButton: false,
            onSubmitted: (searchTerm) =>
                context.read<BooksBloc>().add(SearchBooksEvent(searchTerm)),
          ),
          BlocBuilder<BooksBloc, BooksState>(builder: (context, state) {
            if (state is BooksError) {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(
                    content: Text(state.errorMessage ?? 'Error'),
                  ),
                );
            }

            if (state is BooksLoading) {
              return CircularProgressIndicator();
            } else if (state is BooksNoData) {
              return Text('No data');
            } else {
              return Expanded(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: state.books.length,
                  itemBuilder: (context, index) {
                    return BookTile(
                      book: state.books[index],
                      onTap: () => Navigator.pushNamed(
                          context, AppRoutes.bookDescription),
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
