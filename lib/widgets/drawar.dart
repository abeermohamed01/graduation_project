import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'my_divider.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  String title = 'P a g e  2';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      color: Colors.black87,
      height: size.height,
      width: size.width * 0.2,
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExpansionTile(
            iconColor: Colors.black,
            title: Text(
              'P a g e  1',
              style: GoogleFonts.comfortaa(color: Colors.white, fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const DividerFromWidth(),
          const SizedBox(
            height: 10,
          ),
          ExpansionTile(
            iconColor: Colors.white,
            title: Text(
              this.title,
              style: GoogleFonts.comfortaa(color: Colors.white, fontSize: 20),
            ),
            backgroundColor: Colors.black87,
            children: [
              ListTile(
                title: Text(
                  'P a g e 2 ',
                  style:
                      GoogleFonts.comfortaa(color: Colors.white, fontSize: 20),
                ),
                onTap: () {
                  setState(() {
                    this.title = 'P a g e 2 ';
                  });
                },
              ),
              ListTile(
                title: Text(
                  'Page 2 section 3',
                  style:
                      GoogleFonts.comfortaa(color: Colors.white, fontSize: 20),
                ),
                onTap: () {
                  setState(() {
                    this.title = 'Page 2 section 3';
                  });
                },
              ),
              ListTile(
                title: Text(
                  'Page 2 section 4',
                  style:
                      GoogleFonts.comfortaa(color: Colors.white, fontSize: 20),
                ),
                onTap: () {
                  setState(() {
                    this.title = 'Page 2 section 4';
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
