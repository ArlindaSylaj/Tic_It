import 'package:flutter/material.dart';
class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15.0),
      constraints: const BoxConstraints.expand(
        height: 100,
      ),
      color: const Color(0xFF1e1e1e),

      child: Column(
        children:  <Widget>[
          Image.asset('assets/ffk-logo.png',
            height: 50,
            width: 50,
          ),
          const SizedBox(height: 5.0),
          const Text('© Federata e Futbollit e Kosovës')
        ],
      ),
    );
  }
}
