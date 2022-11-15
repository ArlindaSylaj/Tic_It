import 'package:flutter/material.dart';
import 'package:tic_it/screens/next_game.dart';

import '../main.dart';
class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/im1.jpg'))), child: null,
            
          ),
          ListTile(
            leading: const Icon(Icons.input),
            title: const Text('Shtëpia'),
            onTap: () => {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  MyApp()),
            ),},
          ),
          ListTile(
            leading: const Icon(Icons.verified_user),
            title: const Text('Profili'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.sports_soccer),
            title: const Text('Ndeshjet e Ardhëshme '),
            onTap: () => {Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const NextGame()),
            ),
              },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('Rreth Nesh'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.stadium),
            title: const Text('Pamja Stadiumit'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.login),
            title: const Text('Kyqja'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
