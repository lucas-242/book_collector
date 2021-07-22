import 'package:flutter/material.dart';

import 'package:book_collector/shared/themes/themes.dart';

class CollectionWidget extends StatelessWidget {
  final String title;
  final String category;
  final String author;
  final String image;
  const CollectionWidget({
    Key? key,
    required this.title,
    required this.category,
    required this.author,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(children: [
        Container(
          width: size.width,
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Image.asset(image, height: 100),
            SizedBox(width: 30),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(title, style: AppTextStyles.buttonBoldGrey),
              Text(author, style: AppTextStyles.buttonGrey),
              Text(category, style: AppTextStyles.buttonGrey),
            ]),
            SizedBox(width: 30),
            Expanded(child: Icon(Icons.arrow_forward_outlined))
          ]),
        ),
        SizedBox(height: 5),
        Divider(thickness: 1)
      ]),
    );
  }
}
