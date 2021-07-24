import 'package:book_collector/shared/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class BookDescription extends StatelessWidget {
  const BookDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        color: Colors.white,
        width: size.width,
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: size.height / 4,
              color: Colors.blue,
              child:
                  Text("foto do livro aqui", style: AppTextStyles.buttonBoldGrey),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  style: AppTextStyles.buttonGrey),
            ),
          ],
        ),
      ),
    );
  }
}
