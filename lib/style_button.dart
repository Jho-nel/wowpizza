import 'package:flutter/material.dart';

class StyleB {
  static ButtonStyle styleBtn() {
    return ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.white),
      foregroundColor: MaterialStateProperty.all(Colors.orange),
      elevation: MaterialStateProperty.all(0.0),
      padding: MaterialStateProperty.all(
          const EdgeInsets.only(bottom: 8, top: 8, right: 12, left: 12)),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: const BorderSide(color: Colors.black12))),
    );
  }
}
