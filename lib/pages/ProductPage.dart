import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments as Map<String,dynamic>;

    final image = arguments['imageURL'];
    final product = arguments['name'];
    final price = arguments['price'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Product'),
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Stack(
          children: [
            Image.network(
              image,
              width: double.infinity,
              height: 300,
              alignment: Alignment.center,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 0.3),
              ),
              width: double.infinity,
              height: 300,
              alignment: Alignment.bottomCenter,
              child: Text('Some text $product $price'),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: SizedBox(
            width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(product,
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 25,
              ),),
              Text(price.toString(),
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 25
              ),
              )
            ],
          ),
          ),
          

        )
      ],
    )
    );
  }
}