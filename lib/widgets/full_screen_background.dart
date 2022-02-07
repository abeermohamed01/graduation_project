import 'package:flutter/material.dart';

class FullScreenBackgroundImage extends StatefulWidget {
  final String imagePath;
  final Color shadowColor;
  final Widget child;

  const FullScreenBackgroundImage({Key key, this.imagePath, this.shadowColor, this.child}) : super(key: key);


  @override
  _FullScreenBackgroundImageState createState() =>
      _FullScreenBackgroundImageState();
}

class _FullScreenBackgroundImageState extends State<FullScreenBackgroundImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(widget.imagePath),
              fit: BoxFit.cover,
            )),
        child: Container(
          color: widget.shadowColor,
          child: widget.child,
        ),
      ),
    );
  }
}
