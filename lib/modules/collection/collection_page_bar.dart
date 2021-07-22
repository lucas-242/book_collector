import 'package:book_collector/modules/collection/collection_widget.dart';
import 'package:book_collector/shared/navigation_routes.dart';
import 'package:book_collector/shared/themes/themes.dart';
import 'package:flutter/material.dart';

class CollectionPage extends StatefulWidget {
  const CollectionPage({Key? key}) : super(key: key);

  @override
  _CollectionPageState createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
      body: //
          ListView(
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              children: [
            SizedBox(height: 30),
            Divider(thickness: 1),
            CollectionWidget(
                image: 'assets/images/example_book.png',
                title: 'A Educação da Vontade',
                category: 'Auto Ajuda',
                author: 'Jules Payot',
                nav: NavigationRoutes.bookDescription),
            CollectionWidget(
                image: 'assets/images/example_book.png',
                title: 'A Educação da Vontade',
                category: 'Auto Ajuda',
                author: 'Jules Payot',
                nav: NavigationRoutes.bookDescription),
            CollectionWidget(
                image: 'assets/images/example_book.png',
                title: 'A Educação da Vontade',
                category: 'Auto Ajuda',
                author: 'Jules Payot',
                nav: NavigationRoutes.bookDescription),
            CollectionWidget(
                image: 'assets/images/example_book.png',
                title: 'A Educação da Vontade',
                category: 'Auto Ajuda',
                author: 'Jules Payot',
                nav: NavigationRoutes.bookDescription),
            CollectionWidget(
                image: 'assets/images/example_book.png',
                title: 'A Educação da Vontade',
                category: 'Auto Ajuda',
                author: 'Jules Payot',
                nav: NavigationRoutes.bookDescription),
            CollectionWidget(
                image: 'assets/images/example_book.png',
                title: 'A Educação da Vontade',
                category: 'Auto Ajuda',
                author: 'Jules Payot',
                nav: NavigationRoutes.bookDescription),
            CollectionWidget(
                image: 'assets/images/example_book.png',
                title: 'A Educação da Vontade',
                category: 'Auto Ajuda',
                author: 'Jules Payot',
                nav: NavigationRoutes.bookDescription),
            CollectionWidget(
                image: 'assets/images/example_book.png',
                title: 'A Educação da Vontade',
                category: 'Auto Ajuda',
                author: 'Jules Payot',
                nav: NavigationRoutes.bookDescription),
          ]),
    );
  }
}
