import 'package:book_collector/shared/models/book.dart';
import 'package:flutter/material.dart';

import 'package:book_collector/shared/themes/themes.dart';

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
    return ListTile(
      leading: Image.asset(book.image!, height: 100),
      title: Text(book.name, style: AppTextStyles.buttonBoldGrey),
      subtitle: Text(book.author, style: AppTextStyles.buttonGrey),
      trailing: Icon(Icons.arrow_forward_outlined),
      isThreeLine: true,
    );

    //
    //
    // Padding(
    //   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    //   child: Column(
    //     children: [
    //       GestureDetector(
    //         onTap: onTap,
    //         child: Container(
    //           width: size.width,
    //           child: Row(
    //             mainAxisAlignment: MainAxisAlignment.start,
    //             children: [
    //
    //               Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                           Text(book.name, style: AppTextStyles.buttonBoldGrey),
    //                           Text(book.author, style: AppTextStyles.buttonGrey),
    //                           Text(book.category, style: AppTextStyles.buttonGrey),
    //                 ],
    //               ),
    //               SizedBox(width: 30),
    //               Expanded(child: Icon(Icons.arrow_forward_outlined))
    //             ],
    //           ),
    //         ),
    //       ),
    //       SizedBox(height: 5),
    //       Divider(thickness: 1)
    //     ],
    //   ),
    // );
    // Card(
    //   child:
  }
}
