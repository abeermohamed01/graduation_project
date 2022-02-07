import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBarItem extends StatefulWidget {
  final bool selected;
  final Function onTap;
  final String text;

  const NavBarItem({Key key, this.selected, this.onTap, this.text})
      : super(key: key);

  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
          onTap: () {
            widget.onTap();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.text,
                  style: GoogleFonts.openSansCondensed(
                    color: widget.selected ? Colors.white : Colors.white60,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 22,
                ),

                Container(
                  width: 50,
                  height: 2,
                  color: widget.selected ? Colors.white : Colors.transparent,
                ),

              ],
            ),
          )),
    );
  }
}
