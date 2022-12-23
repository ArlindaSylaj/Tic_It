import 'package:flutter/material.dart';
import 'package:tic_it/components/buildAppBar.dart';
import 'package:tic_it/components/menu.dart';
import 'package:tic_it/components/sectorButtons.dart';
import 'package:tic_it/components/footer.dart';
import 'package:tic_it/screens/book_my_seat.dart';

import '../constants.dart';


class NextGame extends StatefulWidget {
  const NextGame({Key? key}) : super(key: key);

  @override
  State<NextGame> createState() => _NextGameState();
}

class _NextGameState extends State<NextGame> {
  BuildAppBar appBar = BuildAppBar();

  final List<SectorButtons> buttons = <SectorButtons>[
    const SectorButtons(buttonsText: 'Sektori J1'),
    const SectorButtons(buttonsText: 'Sektori J2'),
    const SectorButtons(buttonsText: 'Sektori J3'),
    const SectorButtons(buttonsText: 'Sektori V1'),
    const SectorButtons(buttonsText: 'Sektori V2'),
    const SectorButtons(buttonsText: 'Sektori V3'),
    const SectorButtons(buttonsText: 'Sektori L1'),
    const SectorButtons(buttonsText: 'Sektori L2'),
    const SectorButtons(buttonsText: 'Sektori L3'),
    const SectorButtons(buttonsText: 'Sektori L4'),
    const SectorButtons(buttonsText: 'Sektori P1'),
    const SectorButtons(buttonsText: 'Sektori P1A'),
    const SectorButtons(buttonsText: 'Sektori P2'),
    const SectorButtons(buttonsText: 'Sektori P3'),
    const SectorButtons(buttonsText: 'Sektori P4'),
    const SectorButtons(buttonsText: 'Sektori P5'),
    const SectorButtons(buttonsText: 'Sektori P5A'),
    const SectorButtons(buttonsText: 'Sektori VIP1'),
    const SectorButtons(buttonsText: 'Sektori VIP2 ')];

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
                  padding: const EdgeInsets.only(top: 25.0,bottom: 30.0),
                  child: Column(
                    children: const [
                      Text('Ballkani - Slavia Praha',
                        style: kTeamsTextStyle,
                      ) ,
                      Text('October 27, 2022 9:00 PM',
                        style: kDateTextStyle,
                      ),
                    ],
                  ),
                ),
                Wrap(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: Center(
                        child: Text(
                          'Select the sector:',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                    ),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:  const [
                      SectorButtons(buttonsText: 'Sektori J1', routeName: BookMySeats(),),
                      SectorButtons(buttonsText: 'Sektori J2'),
                      SectorButtons(buttonsText: 'Sektori J3'),
                    ],
                  ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        SectorButtons(buttonsText: 'Sektori V1'),
                        SectorButtons(buttonsText: 'Sektori V2'),
                        SectorButtons(buttonsText: 'Sektori V3'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        SectorButtons(buttonsText: 'Sektori L1'),
                        SectorButtons(buttonsText: 'Sektori L2'),
                        SectorButtons(buttonsText: 'Sektori L3'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        SectorButtons(buttonsText: 'Sektori L4'),
                        SectorButtons(buttonsText: 'Sektori P1'),
                        SectorButtons(buttonsText: 'Sektori P1A'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        SectorButtons(buttonsText: 'Sektori P2'),
                        SectorButtons(buttonsText: 'Sektori P3'),
                        SectorButtons(buttonsText: 'Sektori P4'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        SectorButtons(buttonsText: 'Sektori P2'),
                        SectorButtons(buttonsText: 'Sektori P3'),
                        SectorButtons(buttonsText: 'Sektori P4'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        SectorButtons(buttonsText: 'Sektori P5'),
                        SectorButtons(buttonsText: 'Sektori VIP1'),
                        SectorButtons(buttonsText: 'Sektori VIP2 '),
                      ],
                    ),
                    Image.asset('assets/images/stadiumi.jpg')
                ],
                ),
              const Align(
                alignment: Alignment.bottomCenter,
                  child: Footer(),
              ),
            ],
          ),
        ),
    );
  }
}
/*






*/