import 'package:flutter/material.dart';

class BookDescriptionWidget extends StatelessWidget {
  const BookDescriptionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(children: [Container(height: 300, color: Colors.blue)]);
  }
}
