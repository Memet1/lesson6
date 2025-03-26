import 'dart:ffi';

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
            ProductCard(
              'https://www.google.com/imgres?q=shoes&imgurl=https%3A%2F%2Ffuelshoes.com%2Fcdn%2Fshop%2Ffiles%2F8_1e1df76b-b544-44fc-8c2f-e31dba4b1eb3.jpg%3Fv%3D1720001401%26width%3D3000&imgrefurl=https%3A%2F%2Ffuelshoes.com%2Fproducts%2Ffuel-freedom-sports-shoes-for-boys&docid=zneZ4t_Iu3EyLM&tbnid=XHN7pcNFSuuveM&vet=12ahUKEwjP34OozaKMAxXnQ_EDHThzGHAQM3oECGYQAA..i&w=3000&h=3000&hcb=2&ved=2ahUKEwjP34OozaKMAxXnQ_EDHThzGHAQM3oECGYQAA', 
              'First product', 
              138.99 as Double),
              ProductCard(
              'https://www.google.com/imgres?q=shoes&imgurl=https%3A%2F%2Ffuelshoes.com%2Fcdn%2Fshop%2Ffiles%2F8_1e1df76b-b544-44fc-8c2f-e31dba4b1eb3.jpg%3Fv%3D1720001401%26width%3D3000&imgrefurl=https%3A%2F%2Ffuelshoes.com%2Fproducts%2Ffuel-freedom-sports-shoes-for-boys&docid=zneZ4t_Iu3EyLM&tbnid=XHN7pcNFSuuveM&vet=12ahUKEwjP34OozaKMAxXnQ_EDHThzGHAQM3oECGYQAA..i&w=3000&h=3000&hcb=2&ved=2ahUKEwjP34OozaKMAxXnQ_EDHThzGHAQM3oECGYQAA', 
              'Second product', 
              120.99 as Double),
              ProductCard(
              'https://www.google.com/imgres?q=shoes&imgurl=https%3A%2F%2Ffuelshoes.com%2Fcdn%2Fshop%2Ffiles%2F8_1e1df76b-b544-44fc-8c2f-e31dba4b1eb3.jpg%3Fv%3D1720001401%26width%3D3000&imgrefurl=https%3A%2F%2Ffuelshoes.com%2Fproducts%2Ffuel-freedom-sports-shoes-for-boys&docid=zneZ4t_Iu3EyLM&tbnid=XHN7pcNFSuuveM&vet=12ahUKEwjP34OozaKMAxXnQ_EDHThzGHAQM3oECGYQAA..i&w=3000&h=3000&hcb=2&ved=2ahUKEwjP34OozaKMAxXnQ_EDHThzGHAQM3oECGYQAA', 
              'Third product', 
              138.00 as Double),
              ProductCard(
              'https://www.google.com/imgres?q=shoes&imgurl=https%3A%2F%2Ffuelshoes.com%2Fcdn%2Fshop%2Ffiles%2F8_1e1df76b-b544-44fc-8c2f-e31dba4b1eb3.jpg%3Fv%3D1720001401%26width%3D3000&imgrefurl=https%3A%2F%2Ffuelshoes.com%2Fproducts%2Ffuel-freedom-sports-shoes-for-boys&docid=zneZ4t_Iu3EyLM&tbnid=XHN7pcNFSuuveM&vet=12ahUKEwjP34OozaKMAxXnQ_EDHThzGHAQM3oECGYQAA..i&w=3000&h=3000&hcb=2&ved=2ahUKEwjP34OozaKMAxXnQ_EDHThzGHAQM3oECGYQAA', 
              'Fourth product', 
              138.99 as Double)
          ],
          ),
    );
  }
}