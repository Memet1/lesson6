import 'package:flutter/material.dart';
import 'pages/SpecialOfferScreen.dart';
import 'pages/ProductPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routes: {
        '/': (context) => const MyHomePage(title: 'Home Page'),
        '/offers': (context) => const Specialofferscreen(),
        '/product': (context) => const ProductPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15),
                child: Text(
                  'Hi! Look at our Special offers:',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic
                  ),
                ),
            ),
            ElevatedButton(onPressed:() {
              Navigator.pushNamed(context, '/offers');
            },
                style: ElevatedButton.styleFrom (
                  backgroundColor: Colors.amber
                ),
                child: Text(
                  'Special Offers',
                style: TextStyle(
                  color: Colors.white
                ),)
            )
          ],
        ),
      ),
    );
  }
}
