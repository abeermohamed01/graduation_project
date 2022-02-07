import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants.dart';

class ProductScreen extends StatefulWidget {
  final String category;
  final String title;
  final bool isShow;
  const ProductScreen(
      { this.category,  this.title,  this.isShow});
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            widget.category,
            style: GoogleFonts.nunito(color: Colors.white70 , fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.title,
            style: GoogleFonts.robotoSlab(color: Colors.white , fontSize: 35),
          ),
          const SizedBox(
            height: 20,
          ),
          if (widget.isShow)
            Text(
              "A small description for recycling robot with two lines lenght small description for recycling robot with two lines lenght.",
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                color: kTextcolor,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
            ),
          const SizedBox(
            height: 10,
          ),
          // Row(
          //   mainAxisSize: MainAxisSize.min,
          //   children: <Widget>[
          //     Text(
          //       'Curious to know more',
          //       style: Theme.of(context).textTheme.bodyText2?.copyWith(
          //         color: kTextcolor,
          //         fontWeight: FontWeight.bold,
          //       ),
          //     ),
          //     IconButton(
          //       icon: const Icon(Icons.arrow_right_alt),
          //       tooltip: 'arrow',
          //       onPressed: () {},
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}
