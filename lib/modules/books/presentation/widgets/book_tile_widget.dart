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
            height: 180,
            child: book.image != null
                ? Image.network(book.image!, height: 180)
                : Image.asset(AppImages.noImage, height: 180)
          ),
          title: Text(book.title, style: AppTextStyles.bodyBold),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8),
              Text(book.subtitle ?? book.summary ?? ''),
              SizedBox(height: 8),
              Text(book.authors.reduce((value, element) => value + ', ' + element)),
              // Text(book.categories),
            ],
          ),
          trailing: Icon(Icons.arrow_forward_outlined),
          isThreeLine: true,
        ),
      ),
    );
  }
}
