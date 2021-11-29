import 'package:flutter/material.dart';
import 'package:wowpizza/button.dart';
import 'package:wowpizza/cheesepizza.dart';
import 'package:wowpizza/papasfritas.dart';
import 'package:wowpizza/vegetablepizza.dart';

class MenuButtonPizza extends StatelessWidget {
  const MenuButtonPizza({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ButtonM(
                      'Vegetable Pizaa',
                      () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const VegetablePizza()));
                      },
                    )),
                Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ButtonM('Cheese Piza', () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CheesePizza()));
                    })),
                Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ButtonM('Fries', () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PapasFritas()));
                    }))
              ],
            )));
  }
}
