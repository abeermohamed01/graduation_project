import 'package:flutter/material.dart';

class Logo extends StatefulWidget {
  final String logoPath;

  const Logo({Key key, this.logoPath}) : super(key: key);

  @override
  _LogoState createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(
        image: NetworkImage(widget.logoPath),
        loadingBuilder: null,
      ),
    );
  }
}
