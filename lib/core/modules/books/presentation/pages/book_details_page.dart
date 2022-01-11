import 'package:book_collector/core/modules/books/books.dart';
import 'package:book_collector/core/themes/themes.dart';
import 'package:flutter/material.dart';

class BookDetailsPage extends StatelessWidget {
  final Book book;

  final VoidCallback onBack;

  const BookDetailsPage({Key? key, required this.book, required this.onBack})
      : super(key: key);

  static Page page(Book book, VoidCallback onBack) =>
      MaterialPage<void>(child: BookDetailsPage(book: book, onBack: onBack));

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: onBack,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: size.width,
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: size.height / 4,
                color: Colors.blue,
                child:
                    Text("foto do livro aqui", style: AppTextStyles.bodyBold),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: book.summary != null
                    ? Text(
                        book.summary!,
                        style: AppTextStyles.bodyBold,
                      )
                    : Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
