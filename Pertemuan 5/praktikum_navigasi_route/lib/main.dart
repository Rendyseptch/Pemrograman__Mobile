import 'package:flutter/material.dart';
import 'package:praktikum_navigasi_route/pages/homepage.dart';  
import 'package:praktikum_navigasi_route/pages/item_page.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => homepage(),
      '/item': (context) => item_page(),
    },
  ));
}
