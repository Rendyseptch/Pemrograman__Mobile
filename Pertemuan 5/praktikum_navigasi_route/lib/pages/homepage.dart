import 'package:flutter/material.dart';
import 'package:praktikum_navigasi_route/models/item.dart';

class homepage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar',berat: '200 gram', price: 5000),
    Item(name: 'Salt',berat: '100 gram', price: 2000),
    Item(name: 'Flour',berat: '250 gram', price: 15000),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home page'),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell (
              onTap:(){
                
                 Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Row(children: [
                    Expanded(child: Text(item.name)),
                    Expanded(
                      child: Text(
                        item.price.toString(),
                        textAlign: TextAlign.end,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        item.berat.toString(),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ]),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
