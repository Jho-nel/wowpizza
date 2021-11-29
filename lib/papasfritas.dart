import 'package:flutter/material.dart';
import 'package:wowpizza/menu_botones_pizza.dart';

import 'menu_bar.dart';

class PapasFritas extends StatefulWidget {
  const PapasFritas({Key? key}) : super(key: key);

  @override
  _PapasFritasState createState() => _PapasFritasState();
}

class _PapasFritasState extends State<PapasFritas> {
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
                  image: AssetImage('imagenes/papas.jpeg'),
                  width: double.infinity,
                  height: 250,
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 210,
                ),
                Text(
                  'papasfritas.dart',
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
