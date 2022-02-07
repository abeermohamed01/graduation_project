import 'package:flutter/material.dart';
import 'package:graduation_project/services/welcom_screen_provider.dart';
import 'package:graduation_project/views/screens/welcome_page/controller/welcome_page_controller.dart';
import 'package:provider/provider.dart';

import 'core/router.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Flurorouter.setupRouter();
  }
  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ScrollProvider()),
        ChangeNotifierProvider(create: (_) => PagesController()),

      ],
      child:
           MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        onGenerateRoute: Flurorouter.router.generator
       // home: WelcomeScreen(),
      ),
    );


  }
}


