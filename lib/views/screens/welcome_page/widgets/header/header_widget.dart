import 'package:flutter/material.dart';
import 'package:graduation_project/utils/responsive.dart';
import 'logo.dart';
import 'horizontal_page_bar.dart';


class HeaderWidget extends StatefulWidget {
  final String logoPath;
  final List<Enum> pages;
  final Enum defaulPage;

  const HeaderWidget({Key key, this.logoPath, this.pages, this.defaulPage}) : super(key: key);


  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
   double pageXPosition;
   double pageWidth;

  @override
  void initState() {
    super.initState();
    pageXPosition = 415;
    pageWidth = 88;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
        padding: const EdgeInsets.only(bottom: 15, top: 15),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                  fit: BoxFit.cover,
                  child: Container(
                    height: size.height * 0.1,
                    color: Colors.transparent,
                    child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Logo(logoPath: widget.logoPath),
                              Responsive.isMobile(context) != true
                                  ? SizedBox(
                                width: size.width * 0.25,
                              )
                                  : SizedBox(
                                width: size.width *
                                    (size.width < 500 ? 0.55 : 0.7),
                              ),
                              if (Responsive.isMobile(context) != true)
                                HorizontalPagesBar(
                                  key: widget.key,
                                  pages: widget.pages,
                                  color: Colors.white,
                                  onPagePressed: (page, key) {
                                    RenderBox box = key.currentContext
                                        ?.findRenderObject() as RenderBox;
                                    Offset position = box.localToGlobal(
                                        Offset
                                            .zero); //this is global position
                                    double x = position.dx;
                                    double width = box.size.width;
                                    setState(() {
                                      pageXPosition = x;
                                      pageWidth = width;
                                    });
                                  },
                                  defaulPage: widget.defaulPage,
                                ),
                              if (Responsive.isMobile(context) != true)
                                SizedBox(
                                  width: size.width * 0.12,
                                ),
                              RightIconsButtons(),
                            ])),
                  )),
              // if (size.height < 400)
              const SizedBox(
                height: 8,
              ),
              if (Responsive.isMobile(context) != true)
                Row(
                  children: [
                    SizedBox(
                      width: pageXPosition,
                    ),
                    Container(
                      height: 2,
                      width: pageWidth,
                      color: Colors.white,
                    ),
                  ],
                ),
              if (Responsive.isMobile(context) != true)
                const SizedBox(
                  height: 0.5,
                ),
              Container(
                height: 1,
                color: Colors.white.withOpacity(0.6),
              ),
            ]));
  }
}

class RightIconsButtons extends StatefulWidget {
  const RightIconsButtons({Key key}) : super(key: key);


  @override
  _RightIconsButtonsState createState() => _RightIconsButtonsState();
}

class _RightIconsButtonsState extends State<RightIconsButtons> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white.withOpacity(0.6),
            ),
            onPressed: null),
        SizedBox(
          width: size.width * 0.03,
        ),
        IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white.withOpacity(0.6),
            ),
            onPressed: null),
      ],
    );
  }
}
