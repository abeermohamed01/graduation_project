import 'package:flutter/material.dart';

import '../constants.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      width: 1,
      height: MediaQuery.of(context).size.width,
      color: appSecondaryColor,
    );
  }
}


class DividerFromWidth extends StatelessWidget {
  const DividerFromWidth({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Divider(
      thickness: 1,
      color: appSecondaryColor,

    );
  }
}

