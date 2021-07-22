import 'package:flutter/material.dart';

import 'package:book_collector/shared/navigation_routes.dart';
import 'package:book_collector/shared/themes/themes.dart';

class CollectionWidget extends StatefulWidget {
  final String title;
  final String category;
  final String author;
  final String image;
  final String nav;
  const CollectionWidget({
    Key? key,
    required this.title,
    required this.category,
    required this.author,
    required this.image,
    required this.nav,
  }) : super(key: key);

  @override
  _CollectionWidgetState createState() => _CollectionWidgetState();
}

class _CollectionWidgetState extends State<CollectionWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var _navigator = widget.nav;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(children: [
        GestureDetector(
          onTap: () async {
            await Navigator.pushNamed(context, _navigator);
            setState(() {});
          },
          child: Container(
            width: size.width,
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Image.asset(widget.image, height: 100),
              SizedBox(width: 30),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(widget.title, style: AppTextStyles.buttonBoldGrey),
                Text(widget.author, style: AppTextStyles.buttonGrey),
                Text(widget.category, style: AppTextStyles.buttonGrey),
              ]),
              SizedBox(width: 30),
              Expanded(child: Icon(Icons.arrow_forward_outlined))
            ]),
          ),
        ),
        SizedBox(height: 5),
        Divider(thickness: 1)
      ]),
    );
  }
}
