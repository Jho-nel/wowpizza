import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

import 'package:wowpizza/facebook.dart';
import 'package:wowpizza/twitter.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'pizza Cachimbos 2021',
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
      backgroundColor: Colors.orangeAccent,
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const Fb()));
          },
          icon: const Icon(EvaIcons.facebook),
          color: Colors.white,
        ),
        IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Twitter()));
          },
          icon: const Icon(EvaIcons.twitter),
          color: Colors.white,
        )
      ],
    );
  }
}
