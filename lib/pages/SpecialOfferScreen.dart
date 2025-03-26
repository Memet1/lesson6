import 'package:flutter/material.dart';
import 'package:lesson6/ProductCard.dart';

class Specialofferscreen extends StatefulWidget {
  const Specialofferscreen({super.key});

  @override
  State<Specialofferscreen> createState() => _SpecialofferscreenState();
}

class _SpecialofferscreenState extends State<Specialofferscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text ('Special Offers')),
        body: GridView.count(
          primary: true,
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            productCard(context,
              'https://fuelshoes.com/cdn/shop/files/8_1e1df76b-b544-44fc-8c2f-e31dba4b1eb3.jpg?v=1720001401&width=1000',
              'First product', 
              138.99),
              productCard(context,
              'https://fuelshoes.com/cdn/shop/files/8_1e1df76b-b544-44fc-8c2f-e31dba4b1eb3.jpg?v=1720001401&width=1000',
              'Second product', 
              120.99),
              productCard(context,
              'https://fuelshoes.com/cdn/shop/files/8_1e1df76b-b544-44fc-8c2f-e31dba4b1eb3.jpg?v=1720001401&width=1000',
              'Third product', 
              138.00),
              productCard(context,
              'https://fuelshoes.com/cdn/shop/files/8_1e1df76b-b544-44fc-8c2f-e31dba4b1eb3.jpg?v=1720001401&width=1000',
              'Fourth product', 
              138.99)
          ],
          ),
    );
  }
}