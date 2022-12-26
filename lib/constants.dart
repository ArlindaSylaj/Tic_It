import 'package:flutter/material.dart';

const kButtonsTextStyle = TextStyle(
  color: Colors.white,
);
const kTeamsTextStyle = TextStyle(
  fontSize: 20.0,
  color: Colors.black,
  fontWeight: FontWeight.bold,
);
const kDateTextStyle = TextStyle(
  fontSize: 16.0,
  color: Colors.black,
);
final ButtonStyle kFlatButtonStyle = TextButton.styleFrom(
  backgroundColor: const Color(0xfff8946c),
  fixedSize: const Size(120, 30),
  padding: const EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  ),
);

final ButtonStyle kSeatButtonStyle = TextButton.styleFrom(
  backgroundColor: const Color(0xfff8946c),
  fixedSize: const Size(250, 30),
  padding: const EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  ),
);

    /*
    * TextButton.styleFrom(
  backgroundColor: const Color(0xfff8946c),
  fixedSize: const Size(120, 30),
  padding: const EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  ),*/