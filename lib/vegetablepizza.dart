import 'package:flutter/material.dart';
import 'package:wowpizza/menu_botones_pizza.dart';

import 'menu_bar.dart';

class VegetablePizza extends StatefulWidget {
  const VegetablePizza({Key? key}) : super(key: key);

  @override
  _VegetablePizzaState createState() => _VegetablePizzaState();
}

class _VegetablePizzaState extends State<VegetablePizza> {
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
                  image: AssetImage('imagenes/pizaa2.jpeg'),
                  width: double.infinity,
                  height: 250,
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 200,
                ),
                Text(
                  'vegetable.dart',
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
