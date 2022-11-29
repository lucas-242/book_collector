import 'package:book_collector/core/themes/themes.dart';
import 'package:book_collector/core/modules/books/books.dart';
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
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: ListTile(
          onTap: onTap,
          isThreeLine: true,
          leading: Container(
              height: 180,
              child: book.image != null
                  ? Image.network(book.image!, height: 180)
                  : Image.asset(AppImages.noImage, height: 180)),
          title: Text(
            book.title,
            style: AppTextStyles.bodyBold,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8),
              Text(
                book.subtitle ?? book.summary ?? '',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 8),
              Text(
                book.authors.reduce((value, element) => value + ', ' + element),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          // trailing: Icon(Icons.arrow_forward_outlined),
        ),
      ),
    );
  }
}
