import 'package:book_collector/core/themes/themes.dart';
import 'package:book_collector/modules/books/books.dart';
import 'package:flutter/material.dart';


class BookTile extends StatelessWidget {
  final Book book;
  final VoidCallback? onTap;

  const BookTile({
    Key? key,
    required this.book,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 3,
        child: ListTile(
          leading: Container(
              height: 180, child: Image.asset(book.image!, height: 120)),
          title: Text(book.name, style: AppTextStyles.bodyBold),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(book.author),
              SizedBox(height: 5),
              Text(book.category),
            ],
          ),
          trailing: Icon(Icons.arrow_forward_outlined),
          isThreeLine: true,
        ),
      ),
    );
  }
}
