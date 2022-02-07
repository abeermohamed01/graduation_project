import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graduation_project/services/welcom_screen_provider.dart';
import 'package:graduation_project/views/screens/welcome_page/controller/scroll_controller.dart';
import 'package:provider/provider.dart';

class WelcomeScreenBody extends StatefulWidget {


const  WelcomeScreenBody({Key key}) : super(key: key);

  @override
  State<WelcomeScreenBody> createState() => _WelcomeScreenBodyState();
}

class _WelcomeScreenBodyState extends State<WelcomeScreenBody> {
  final double _width = 300;

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);
    final controller = MyController(scrollProvider);
    return Container(
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Text('Header text and small',
                  style: GoogleFonts.openSansCondensed(
                      fontSize: 15, color: Colors.white))),
          Center(
              child: Text(
                'Body text and big with two lines fee',
                style:
                GoogleFonts.sourceSerifPro(fontSize: 40, color: Colors.white),
              )),
          Center(
              child: Text(
                'Ferregergg fregeger',
                style:
                GoogleFonts.sourceSerifPro(fontSize: 40, color: Colors.white),
              )),
          const SizedBox(
            height: 20,
          ),
          Center(
              child: Text('This is footer text get gemlgerg emlgrew Georg',
                  style: GoogleFonts.hindGuntur(
                      fontSize: 15, color: Colors.white))),
          Center(
              child: Text('Regwegwe freffgegr',
                  style: GoogleFonts.hindGuntur(
                      fontSize: 15, color: Colors.white))),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: Text('Get Started',
                        style: GoogleFonts.openSansCondensed(
                            fontSize: 15, color: Colors.black))),
              ),
              const SizedBox(width: 30,),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.transparent.withOpacity(0.1),
                child: const Icon(Icons.play_arrow , color: Colors.white,),
              ),
              const SizedBox(width: 30,),

              Text('Introduction Video',
                  style: GoogleFonts.sourceSerifPro(
                      fontSize: 15, color: Colors.white)),
            ],
          ),
         // const SizedBox(width: 40,),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 10 , right: 10),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      controller.scrollMinus();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                      color: scrollProvider.index <= 40
                          ? Colors.transparent
                          : Colors.white,
                    )),
                // GestureDetector(
                //   onTap: (){
                //     _doanimation();
                //   },
                //   child: AnimatedContainer(
                //       curve: _curve,
                //       color: Colors.red,
                //       duration: const Duration(seconds: 1),
                //       width: 200,
                //       height:loginHeight,
                //         //  child:_doanimation()?const Text('Hellllo' , style:  TextStyle(color: Colors.white),): const Text('Welcoooooooome' , style: TextStyle(color: Colors.white),),
                //   ),
                // ),
                Container(
                  margin: const EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width - 120,
                  height: 200,
                  child: ListView.builder(
                      itemCount: 4,
                      controller: controller.controller,
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (_, i) => Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Row(
                          children: [
                            Container(
                              width: _width,
                              height: 200,
                              decoration: BoxDecoration(
                                  color: Colors.grey[800],
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(5))),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 30 , right: 30),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children:  [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 100,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[700],
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child:  Center(child: Text('Type' , style: GoogleFonts.hindGuntur(color: Colors.white , fontSize: 18),),),
                                        ),

                                        CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Colors.blue[800],
                                          child: const Icon(Icons.arrow_forward , color: Colors.white,),
                                        )
                                      ],
                                    ),
                                   // const SizedBox(height: 50,),
                                     Text(
                                      'Topic Text Gggggggg gggggggggggggg',
                                     // CardViewModel(cardList[i]).text,
                                      style: GoogleFonts.sourceSerifPro(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w200),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 20,),
                            Container(
                              width: _width,
                              height: 200,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(5))),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 30 , right: 30),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children:  [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 100,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[200],
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child:  Center(child: Text('Type' , style: GoogleFonts.hindGuntur(color: Colors.white , fontSize: 18),),),
                                        ),

                                        CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Colors.grey[200],
                                          child: const Icon(Icons.arrow_forward , color: Colors.white,),
                                        )
                                      ],
                                    ),
                                    // const SizedBox(height: 50,),
                                    Text(
                                      'Topic Text Gggggggg gggggggggggggg',
                                      // CardViewModel(cardList[i]).text,
                                      style: GoogleFonts.sourceSerifPro(
                                          color: Colors.blue,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w200),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
                IconButton(
                    onPressed: () {
                      controller.scrollPlus();
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      size: 30,
                      color: scrollProvider.index >= 1360
                          ? Colors.transparent
                          : Colors.white,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}