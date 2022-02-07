
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constants.dart';


Widget sectionFooter({
   String title,
   String description,


}) =>   Flexible(
  child: FractionallySizedBox(
    widthFactor: 0.7,
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            child:  Text(title,
              textAlign: TextAlign.left,
              style: GoogleFonts.openSansCondensed(
                  fontSize: 25, color: Colors.white),),
          ),
          const SizedBox(height: appPadding),
          Container(
              width: double.infinity,
              child: Text(
                description,
                textAlign: TextAlign.left,
                style:  GoogleFonts.openSansCondensed(
                    fontSize: 18, color: Colors.white60),
                maxLines: 3,
              )),

        ],
      ),
    ),
  ),
);