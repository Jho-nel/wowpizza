import 'package:flutter/material.dart';
import 'package:wowpizza/menu_bar.dart';
import 'menu_botones_pizza.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const StateMyApp(),
    );
  }
}

class StateMyApp extends StatefulWidget {
  const StateMyApp({Key? key}) : super(key: key);

  @override
  _StateMyAppState createState() => _StateMyAppState();
}

class _StateMyAppState extends State<StateMyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          child: MenuBar(),
          preferredSize: Size.fromHeight(50),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                MenuButtonPizza(),
                SizedBox(
                  height: 20,
                ),
                Image(
                  fit: BoxFit.fitWidth,
                  image: AssetImage('imagenes/pizza4.jpeg'),
                  width: double.infinity,
                  height: 250,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'pizzeria MacDonad hello word! whats happend',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                SizedBox(
                  height: 120,
                ),
                Text(
                  'cachimbos.dart',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.blue),
                )
              ],
            ),
          ),
        ));
  }
}
