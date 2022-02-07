import 'package:flutter/material.dart';
import 'package:graduation_project/utils/responsive.dart';
import 'package:graduation_project/views/screens/welcome_page/widgets/footer/footer_description.dart';

import '../../../../constants.dart';


class FooterScreen extends StatelessWidget {
  const FooterScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 1.0, color: appSecondaryColor),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(appPadding),
                child: (Responsive.isMobile(context) == true)
                    ? Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    sectionFooter(title: 'A Lot of components', description:'All the elements that are contained in Bootstrap.' ),
                    sectionFooter(title: 'Extremely Light & Fast', description:'Light and clean code installs with ease and is only few kilobytes' ),
                    sectionFooter(title: 'Perfect Matching', description:'Components are made using the same styles and match.' ),
                    sectionFooter(title: 'Clear Grid', description:'Components are fixed to the popular 12 Grid system' ),
                  ],
                )
                    : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    sectionFooter(title: 'A Lot of components', description:'All the elements that are contained in Bootstrap.' ),
                    sectionFooter(title: 'Extremely Light & Fast', description:'Light and clean code installs with ease and is only few kilobytes' ),
                    sectionFooter(title: 'Perfect Matching', description:'Components are made using the same styles and match.' ),
                    sectionFooter(title: 'Clear Grid', description:'Components are fixed to the popular 12 Grid system' ),

                  ],
                ),
              ),
            )));
  }
}






