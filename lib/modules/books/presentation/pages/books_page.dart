import 'package:book_collector/core/routes/app_routes.dart';
import 'package:book_collector/core/widgets/search_bar_widget.dart';
import 'package:book_collector/modules/books/books.dart';
import 'package:flutter/material.dart';

import '../widgets/book_tile_widget.dart';

class BooksPage extends StatefulWidget {
  const BooksPage({Key? key}) : super(key: key);

  @override
  _BooksPageState createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  Book book = Book(
    id: 'abc',
    edition: 'Primeira edição',
    publishedBy: 'Kírion',
    year: 1984,
    image: 'assets/images/example_book.png',
    name: 'A Educação da Vontade',
    category: 'Auto Ajuda',
    author: 'Jules Payot',
  );

  @override
  Widget build(BuildContext context) {
    var books = [
      book,
      book,
      book,
      book,
      book,
      book,
      book,
      book,
      book,
    ];

    return Scaffold(
      body: Column(
        children: [
          SearchBar(showFiltersButton: false),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: books.length,
              itemBuilder: (context, index) {
                return BookTile(
                  book: books[index],
                  onTap: () =>
                      Navigator.pushNamed(context, AppRoutes.bookDescription),
                );
              },
            ),
          ),
          SizedBox(height: 10)
        ],
      ),
    );
  }
}
