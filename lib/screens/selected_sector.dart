import 'package:flutter/material.dart';

import '../components/buildAppBar.dart';
import '../components/footer.dart';
import '../components/menu.dart';

class SelectedSector extends StatefulWidget {
  const SelectedSector({Key? key}) : super(key: key);

  @override
  State<SelectedSector> createState() => _SelectedSectorState();
}

class _SelectedSectorState extends State<SelectedSector> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawerEnableOpenDragGesture: false,
        drawer: const Menu(),
        appBar: BuildAppBar.buildAppbar(),
        body: SingleChildScrollView(
        child: Column(
          children:  <Widget>[
            Container(
                margin: const EdgeInsets.all(10.0),
                child: Image.asset('assets/images/tribunaprice.png')),
            Footer(),
          ],
        ),
        ),
    );
  }
}
