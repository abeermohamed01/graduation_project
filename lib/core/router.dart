import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/views/screens/welcome_page/components/welcome_screen.dart';
import 'package:graduation_project/widgets/splash.dart';



class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static final Handler _splashHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          SplashScreen());

  static final Handler _mainHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          WelcomeScreen(page: params['name'][0], ));

  // this one is for one paramter passing...
  // lets create for two parameters too...

  static final Handler _mainHandler2 = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          WelcomeScreen(page: params['name'][0],extra: params['extra'][0],));

  // ok its all set now .....
  // now lets have a handler for passing parameter too....


  static void setupRouter(){
    router.define(
      '/',
      handler: _splashHandler,
    );
    router.define(
      '/main/:name',
      handler: _mainHandler,
      transitionType: TransitionType.fadeIn,
    );

    router.define(
      '/main/:name/:extra',
      handler: _mainHandler2,
      transitionType: TransitionType.fadeIn,
    );
  }
}

