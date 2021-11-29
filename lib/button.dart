import 'package:flutter/material.dart';
import 'package:wowpizza/style_button.dart';

class ButtonM extends ElevatedButton {
  final String? nombre;
  final Function()? funcion;

  ButtonM(this.nombre, this.funcion, {Key? key})
      : super(
            key: key,
            child: Text(nombre!),
            onPressed: funcion,
            style: StyleB.styleBtn());
}

class Texto {
  static String tex() {
    return 'cachimbos.dart';
  }
}
