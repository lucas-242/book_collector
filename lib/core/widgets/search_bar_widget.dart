import 'package:book_collector/core/themes/themes.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final Function()? onTap;
  final Function(String)? onChange;
  final Function(String)? onSubmitted;
  final String label;
  final bool showFiltersButton;
  final Color boxColor;
  final Color textColor;
  final EdgeInsets padding;

  SearchBar({
    this.label = 'Pesquise algo aqui',
    this.showFiltersButton = true,
    this.onTap,
    this.onSubmitted,
    this.onChange,
    Color? boxColor,
    Color? textColor,
    EdgeInsets? padding,
  })  : this.boxColor = boxColor ?? AppColors.grey.withAlpha(100),
        this.textColor = textColor ?? AppColors.grey,
        this.padding =
            padding ?? EdgeInsets.symmetric(horizontal: 20, vertical: 20);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              height: 55,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: boxColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: TextField(
                onSubmitted: (search) => onSubmitted!(search),
                onTap: () => onTap!(),
                onChanged: (search) => onChange!(search),
                cursorColor: AppColors.primary,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: label,
                  hintStyle: TextStyle(fontSize: 16, color: textColor),
                  contentPadding:
                      EdgeInsets.only(left: 10, right: 10, bottom: 7, top: 5),
                  prefixIcon: Icon(
                    Icons.search,
                    color: AppColors.grey,
                  ),
                ),
              ),
            ),
          ),
          if (showFiltersButton) ...[
            SizedBox(width: 20),
            _filterButton(),
          ]
        ],
      ),
    );
  }

  Widget _filterButton() {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        width: SizeConfig.blockSizeHorizontal * 13.8,
        height: SizeConfig.blockSizeHorizontal * 13.8,
      ),
      child: ElevatedButton(
        onPressed: () {},
        child: Icon(Icons.tune, color: AppColors.stroke),
        style: ElevatedButton.styleFrom(
          primary: AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }

  //TextFormField with rounded borders
  // Container(
  //   width: size.width / 1.4,
  //   height: 50,
  //   alignment: Alignment.center,
  //   decoration: BoxDecoration(
  //       color: Colors.grey[200],
  //       borderRadius: BorderRadius.circular(40)),
  //   child: Padding(
  //     padding: EdgeInsets.only(left: 12),
  //     child: TextField(
  //       textCapitalization: TextCapitalization.sentences,
  //       style: AppTextStyles.buttonGrey,
  //       cursorHeight: 18,
  //       cursorColor: AppColors.grey,
  //       decoration: InputDecoration(
  //         enabledBorder: InputBorder.none,
  //         focusedBorder: InputBorder.none,
  //         focusColor: Colors.grey[600],
  //         isDense: true,
  //         icon: Icon(
  //           Icons.search,
  //           size: 30,
  //           color: AppColors.grey,
  //         ),
  //         hintText: "Procurando um livro específico?",
  //         hintStyle: AppTextStyles.input,
  //         counterStyle: AppTextStyles.buttonGrey,
  //       ),
  //     ),
  //   ),
  // ),
}
