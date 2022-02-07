
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/widgets/my_divider.dart';

import 'model/product_model.dart';

class ProductScreenView extends StatefulWidget {
  const ProductScreenView({Key key}) : super(key: key);

  @override
  _ProductScreenViewState createState() => _ProductScreenViewState();
}

class _ProductScreenViewState extends State<ProductScreenView> {
  int _enterCounter = 0;
  int _exitCounter = 0;
  double x = 0.0;
  double y = 0.0;
  String _currentImage = "assets/images/back2.jpg";

  void _incrementEnter(PointerEvent details, int index) {
    setState(() {
      _enterCounter++;
      _currentImage = products[index].imageURL;
      products[index].isShow = true;
    });
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      _exitCounter++;
    });
  }

  void _updateLocation(PointerEvent details, int index) {
    setState(() {
      x = details.position.dx;
      y = details.position.dy;
      _currentImage = products[index].imageURL;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.transparent,
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 0.0),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(_currentImage),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.separated(
            itemCount: products.length,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (BuildContext context, int index) => const MyDivider(),
            itemBuilder: (BuildContext context, int index) {
              return MouseRegion(
                  onEnter: (event) => _incrementEnter(event, index),
                  // onHover: (event) => _updateLocation(event, index),
                  // // onExit: _incrementExit,
                  child: Container(
                    width: products[index].size,
                    // color: colors[index],
                    child: Column(children: [
                      if (index != 0) Spacer(),
                      products[index].widget
                    ]),
                  ));
            },
          ),
        ),
    );
  }
}
