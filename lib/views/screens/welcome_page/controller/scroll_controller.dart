import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/services/welcom_screen_provider.dart';

class MyController {
  final controller = ScrollController();
  final ScrollProvider scrollProvider;

  MyController(this.scrollProvider);

  void scrollPlus() {
    scrollProvider.index += 340;
    _animateToIndex(scrollProvider.index);
    scrollProvider.toggle();
  }

  void scrollMinus() {
    scrollProvider.index -= 350;
    _animateToIndex(scrollProvider.index);
    scrollProvider.toggle();
  }

  _animateToIndex(double index) => controller.animateTo(index,
      duration: Duration(seconds: 1), curve: Curves.fastOutSlowIn);
}
