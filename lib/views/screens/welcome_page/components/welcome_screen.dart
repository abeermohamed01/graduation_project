import 'package:flutter/material.dart';
import 'package:graduation_project/utils/responsive.dart';
import 'package:graduation_project/views/screens/product_page/product_page_view.dart';
import 'package:graduation_project/views/screens/welcome_page/widgets/welcome_screen_body.dart';
import 'package:graduation_project/widgets/drawar.dart';
import 'package:graduation_project/widgets/full_screen_background.dart';
import 'package:graduation_project/widgets/nav_bar_item.dart';
import 'package:graduation_project/widgets/test2.dart';
import 'package:graduation_project/widgets/test3.dart';
import 'package:graduation_project/widgets/test4.dart';

import '../../../../constants.dart';
import 'footer_screen.dart';

class WelcomeScreen extends StatefulWidget {
  final String page;
  final String extra;
  const WelcomeScreen({Key key, this.page, this.extra}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List<String> pages = [
    'welcome screen',
    'product screen',
    'category screen',
    'settings screen',
    'help screen ',
  ];

  List<String> text = ['Page 1', 'Page 2', 'Page 3', 'Page 4', 'Page 5'];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: const MyDrawer(),
      backgroundColor: Colors.black,
      body: FullScreenBackgroundImage(
        shadowColor: appShadowColor,
        imagePath: appImagesPath + 'back2.jpg',
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(width: 1.0, color: appSecondaryColor),
                    )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: 200,
                            height: 150,
                            child: Image.network(appImagesPath + 'logo.png')),
                        if (Responsive.isDesktop(context) == true)
                          Expanded(
                            flex: 4,
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: text.map((e) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30),
                                    child: NavBarItem(
                                      selected: text.indexOf(e) ==
                                          pages.indexOf(widget.page),
                                      text: e,
                                      onTap: () {
                                        if (text.indexOf(e) == 1) {
                                          Navigator.pushNamed(context,
                                              '/main/${pages[text.indexOf(e)]}');
                                        } else {
                                          Navigator.pushNamed(context,
                                              '/main/${pages[text.indexOf(e)]}');
                                        }
                                      },
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 85,
                              height: 85,
                              child: IconButton(
                                  icon: Icon(
                                    Icons.search,
                                    color: appSecondaryColor,
                                  ),
                                  onPressed: () {}),
                            ),
                            const SizedBox(
                              width: appPadding,
                            ),
                            SizedBox(
                              width: 85,
                              height: 85,
                              child: IconButton(
                                  icon: Icon(
                                    Icons.menu,
                                    color: appSecondaryColor,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _scaffoldKey.currentState.openEndDrawer();
                                    });
                                  }),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                // flex: 5,
                height: 600,
                child: IndexedStack(
                  index: pages.indexOf(widget.page),
                  children: const [
                    WelcomeScreenBody(),
                    ProductScreenView(),
                    TestPage1(),
                    TestPage3(),
                    TestPage4(),
                  ],
                ),
              ),
              SizedBox(
                  height:
                      (Responsive.isMobile(context) == true) ? 200 * 4 : 200,
                  child: const FooterScreen()),
            ],
          ),
        ),
      ),
    );
  }
}
