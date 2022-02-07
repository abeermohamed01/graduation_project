import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class ProductsIntroScreen extends StatefulWidget {
  const ProductsIntroScreen({Key key}) : super(key: key);

  @override
  State<ProductsIntroScreen> createState() => _ProductsIntroScreenState();
}

class _ProductsIntroScreenState extends State<ProductsIntroScreen> {
  final List<String> _locations = [
    'Product A',
    'Product B',
    'Product C',
    'Product D'
  ]; // Option 2
  String _selectedLocation;
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(left: 100, top: 80),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.6,
        //height: MediaQuery.of(context).size.height*0.7,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 600,
              child: Text(
                'This is text this is text this is text Second text second text second Third text third text',
                style: GoogleFonts.robotoSlab(
                    color: Colors.white, fontSize: 35),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 450,
              child: Text(
                'This is a description about reyhfg nmbmnbj jgjhjkm jkljljio jkkhjkhhkj This is a description about reyhfg nmbmnbj jgjhjkm jkljljio jkkhjkhhkj   ',
                style: GoogleFonts.nunito(
                    color: Colors.white, fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  width: 120,
                  height: 35,
                  decoration: BoxDecoration(
                      border:
                      Border.all(color: Colors.white, width: 2)),
                  child: Center(
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        hint: const Text(
                          'All Product',
                          style: TextStyle(color: Colors.white),
                        ),
                        icon: const Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Colors.white,
                        ),
                        value: _selectedLocation,
                        onChanged: (newValue) {
                          setState(() {
                            _selectedLocation = newValue;
                          });
                        },
                        items: _locations.map((location) {
                          return DropdownMenuItem(
                            child: Text(location),
                            value: location,
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  width: 120,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      'Get Started',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Scroll to see more',
                        style: TextStyle(color: Colors.white60),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.arrow_back_ios,
                            size: 20,
                            color: Colors.white60,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.white60,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                    color: Colors.white70, width: 2)),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: Colors.white60,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
