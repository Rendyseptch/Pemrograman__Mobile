import 'package:flutter/material.dart';
import 'package:praktikum_navigasi_route/models/item.dart';

class item_page extends StatelessWidget{
  const item_page({super.key});

  
  @override
  Widget build(BuildContext context) {
    final Item itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(itemArgs.name), // use itemArgs to access the item data
      ),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text('Name: ${itemArgs.name}'),
        Text('Weight: ${itemArgs.berat}'),
        Text('Price: ${itemArgs.price}'), 
         // display the price of the item
        ],
      ),
      ),
    );
  }
}