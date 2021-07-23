import 'package:book_collector/shared/core/app_routes.dart';
import 'package:book_collector/shared/models/book.dart';
import 'package:book_collector/shared/themes/themes.dart';
import 'package:flutter/material.dart';

import 'widgets/book_tile_widget.dart';

class CollectionPage extends StatefulWidget {
  const CollectionPage({Key? key}) : super(key: key);

  @override
  _CollectionPageState createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
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
    final size = MediaQuery.of(context).size;

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
      appBar: PreferredSize(
        child: Column(children: [
          Stack(alignment: Alignment.bottomCenter, children: [
            Container(
              alignment: Alignment.center,
              height: size.height / 4.8,
              width: size.width,
              color: Colors.blueGrey,
              child: Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Text("Sua biblioteca na palma da mão",
                    style: AppTextStyles.titleLibrary,
                    textAlign: TextAlign.center),
              ),
            ),
            Container(height: 25, color: Colors.white),
            Container(
              width: size.width / 1.4,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(40)),
              child: Padding(
                padding: EdgeInsets.only(left: 12),
                child: TextField(
                  textCapitalization: TextCapitalization.sentences,
                  style: AppTextStyles.buttonGrey,
                  cursorHeight: 18,
                  cursorColor: AppColors.grey,
                  decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    focusColor: Colors.grey[600],
                    isDense: true,
                    icon: Icon(
                      Icons.search,
                      size: 30,
                      color: AppColors.grey,
                    ),
                    hintText: "Procurando um livro específico?",
                    hintStyle: AppTextStyles.input,
                    counterStyle: AppTextStyles.buttonGrey,
                  ),
                ),
              ),
            ),
          ]),
        ]),
        preferredSize: Size(size.width, size.height / 4.8),
      ),
      body: ListView.builder(
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
    );
  }
}
