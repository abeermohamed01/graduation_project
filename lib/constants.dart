import 'package:flutter/material.dart';


String getAsset(String imageName) => 'assets/images/$imageName.jpg';
String getBackground(String imageName) => 'assets/images/$imageName.png';

String getLottie(String lottie) => 'assets/lottie/$lottie.json';


//double get gridViewChildRatio => sizeFromWidth(1.0) / sizeFromHeight(1.5);

//SliverGridDelegate get gridViewDelegate => SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: gridViewChildRatio,crossAxisSpacing: 15,mainAxisSpacing: 15);


//
// const Color kPrimaryColor = Color(0xFF1492E6);
// final Color kAccentColor = const Color(0xFF1492E6).withOpacity(0.3);
// const Color kGreyColor = Color(0xFFF2F2F2);
// const Color kDarkGreyColor = Color(0xFF555555);
// const Color kBackgroundColor = Colors.white;

// ThemeData theme = ThemeData(
//   platform: TargetPlatform.iOS,
//   primaryColor: kPrimaryColor,
//   canvasColor: kBackgroundColor,
//   fontFamily: 'Tajawal',
//
//   textButtonTheme: TextButtonThemeData(style: ButtonStyle(foregroundColor: MaterialStateProperty.all(kPrimaryColor)),),
//   colorScheme: ColorScheme.fromSwatch().copyWith(secondary: kAccentColor),
// );

final containerDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.white,
    border: Border.all(color: Colors.black54, width: 0.2));





const appPadding = 16.0;
const appSmallPadding = 8.0;

const appImagesPath = "assets/images/";

const appPrimaryColor = Colors.white;
var appSecondaryColor = Colors.white.withOpacity(0.4);

var appShadowColor = Colors.black.withOpacity(0.6);

const appBackgroundImage = "";
const appLogo = "";


const kPrimaryColor = Colors.blue;
const kTextcolor = Color(0xFF241424);
const kDarkButton = Color(0xFF372930);

List<Color> colors = [
  Colors.red,
  Colors.black,
  Colors.pink,
  Colors.green,
  Colors.purple,
  Colors.yellow
];

List<String> images = [
  "assets/images/p3.jpg",
  "assets/images/p2.png",
  "assets/images/bg.png",
  "assets/images/p2.png",
  "assets/images/bg.png",
  "assets/images/p2.png"
];

double bigSize = 1000;
double midSize = 500;

List<double> sizes = [bigSize, midSize, midSize, midSize, midSize, midSize];
