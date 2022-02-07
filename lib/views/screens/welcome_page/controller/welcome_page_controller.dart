import 'package:flutter/material.dart';
import 'package:graduation_project/views/screens/welcome_page/model/welcome_page_model.dart';


class PagesController with ChangeNotifier {
  PageNameEnum cPage = PageNameEnum.page1;

  PageNameEnum get currentPage {
    return cPage;
  }

  set currentPage(PageNameEnum newPage) {
    cPage = newPage;
    notifyListeners();
  }

  List page =[0];

  List get getPage => page;
  set selectPage (int value){
    page.contains(value)?page.clear():page.add(value);
    notifyListeners();
  }
}