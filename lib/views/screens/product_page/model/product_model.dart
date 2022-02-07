import 'package:flutter/material.dart';
import 'package:graduation_project/views/screens/product_page/components/product_intro_screen.dart';
import 'package:graduation_project/views/screens/product_page/components/product_screen.dart';


double bigSize = 1000;
double midSize = 500;
String imagesAssetPath = "assets/images/";
String productsAssetPath = imagesAssetPath + "products/";

List<Product> products = [
  Product(
      title: "Begain",
      category: "",
      imageURL: 'assets/images/back3.jpg',
      size: bigSize,
      widget: ProductsIntroScreen()),
  Product(
    title: "Product 1",
    category: "This is a description about",
    imageURL: 'assets/images/back4.jpg', ),
  Product(
      title: "Product 2",
      category: "This is a description about",
      imageURL: 'assets/images/back5.jpg'),
  Product(
      title: "Product 3",
      category: "This is a description about",
      imageURL: 'assets/images/back3.jpg'),
  Product(
      title: "Product 4",
      category: "This is a description about",
      imageURL:'assets/images/back4.jpg'),
  Product(
      title: "Product 5",
      category: "This is a description about",
      imageURL:'assets/images/back5.jpg'),
  Product(
      title: "Product 6",
      category: "This is a description about",
      imageURL:'assets/images/back3.jpg'),
  Product(
      title: "Product 7",
      category: "This is a description about",
      imageURL:'assets/images/back4.jpg'),
  Product(
      title: "Product 8",
      category: "This is a description about",
      imageURL:'assets/images/back5.jpg'),
];

class Product {
  int id;
  String title;
  String description;
  String category;
  String url;
  String imageURL;
  double size;
  Widget widget;
  bool isShow;
  static int counter = 0;

  Product(
      { this.title,
        this.description,
        this.category,
        this.url,
        this.imageURL,
        this.size,
        this.widget}) {
    if (id == null) {
      id = counter;
      counter++;
    }
    if (this.imageURL == null)
      this.imageURL = "assets/images/back3.jpg";
    if (this.size == null) this.size = midSize;
    if (this.isShow == null) this.isShow = false;
    if (this.widget == null)
      this.widget = ProductScreen(
          category: this.category, title: this.title, isShow: this.isShow);
  }
}
