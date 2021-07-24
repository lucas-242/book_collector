import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  final Function()? onTap;
  final Function(String)? onChange;
  final Function(String)? onSubmitted;
  final String label;
  final bool showFiltersButton;
  final Color? boxColor;
  final Color? textColor;
  final EdgeInsets? padding;

  SearchBar({
    this.label = 'Pesquise algo aqui',
    this.showFiltersButton = true,
    this.onTap,
    this.onSubmitted,
    this.onChange,
    this.boxColor,
    this.textColor,
    this.padding,
  });

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  _handleSubmit(String search) {
    widget.onSubmitted!(search);
  }

  _handleTap() {
    widget.onTap!();
  }

  _handleChange(String search) {
    widget.onChange!(search);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padding,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              height: 55,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: widget.boxColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: TextField(
                onSubmitted: (search) => _handleSubmit(search),
                onTap: () => _handleTap(),
                onChanged: (search) => _handleChange(search),
                cursorColor: Colors.green,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: widget.label,
                  hintStyle: TextStyle(fontSize: 16, color: widget.textColor),
                  contentPadding:
                      EdgeInsets.only(left: 10, right: 10, bottom: 7, top: 5),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          if (widget.showFiltersButton) ...[
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
        width: 200,
        height: 80,
      ),
      child: ElevatedButton(
        onPressed: () {},
        child: Icon(Icons.tune, color: Colors.grey),
        style: ElevatedButton.styleFrom(
          primary: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
