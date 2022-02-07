import 'package:flutter/material.dart';
import 'package:graduation_project/utils/extension.dart';


typedef OnPagePressed = Function(Enum, GlobalKey);

class HorizontalPagesBar extends StatefulWidget {
  final List<Enum> pages;
  final Color color;
  final OnPagePressed onPagePressed;
  final Enum defaulPage;

  const HorizontalPagesBar({Key key, this.pages, this.color, this.onPagePressed, this.defaulPage}) : super(key: key);



  @override
  _HorizontalPagesBarState createState() => _HorizontalPagesBarState();
}

class _HorizontalPagesBarState extends State<HorizontalPagesBar> {
   Enum selectedPage;
  @override
  void initState() {
    super.initState();
    selectedPage = widget.defaulPage;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: widget.pages.map((page) {
        GlobalKey key = GlobalKey();

        return Row(children: [
          TextButton(
            key: key,
            child: Text(
              page.toShortString().toUpperCase(),
              style: TextStyle(
                  fontSize: 15.0,
                  color: page.index == selectedPage.index
                      ? widget.color
                      : widget.color.withOpacity(0.6),
                  fontWeight: FontWeight.w300),
            ),
            onPressed: () async {
              setState(() {
                selectedPage = page;
              });
              widget.onPagePressed(page, key);
            },
          ),
          SizedBox(
            width: size.width * 0.02,
          )
        ]);
      }).toList(),
    );
  }
}
