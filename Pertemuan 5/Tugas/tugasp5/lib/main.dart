import 'package:flutter/material.dart';
import 'package:tugasp5/pages/homepage.dart';  
import 'package:tugasp5/pages/item_page.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => homepage(),
      '/item': (context) => item_page(),
    },
  ));
}
