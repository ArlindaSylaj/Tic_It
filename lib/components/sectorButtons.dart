import 'package:flutter/material.dart';
import 'package:tic_it/constants.dart';

class SectorButtons extends StatelessWidget {
  final String buttonsText;
  final  routeName;
  const SectorButtons({Key? key, required this.buttonsText,  this.routeName}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      backgroundColor: const Color(0xfff8946c),
      fixedSize: const Size(120, 30),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
    );

    return Wrap(
        children: [
          TextButton(
          style: flatButtonStyle,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  routeName),
            );
          },
          child: Text(buttonsText,
            style: kButtonsTextStyle,
          ),
        ),
        ]
    );
  }
}
