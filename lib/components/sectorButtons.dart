import 'package:flutter/material.dart';
import 'package:tic_it/constants.dart';

// TODO: add the not available condition to buttons if there are no seats available
class SectorButtons extends StatelessWidget {
  final String buttonsText;
  final  routeName;
  const SectorButtons({Key? key, required this.buttonsText,  this.routeName}) : super(key: key);



  @override
  Widget build(BuildContext context) {


    return Wrap(
        children: [
          TextButton(
          style: kFlatButtonStyle,
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
