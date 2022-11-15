import 'package:flutter/material.dart';
class BuildAppBar {

  static AppBar buildAppbar(){
    return AppBar(
      centerTitle: true,
      title: const Text('FFK'),
      leading: Builder(
        builder: (context) => // Ensure Scaffold is in context
        IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0,right: 15.0,bottom:8.0),
          child: Image.asset('assets/ffk-logo.png'),
        )
      ],
    );
  }
}
