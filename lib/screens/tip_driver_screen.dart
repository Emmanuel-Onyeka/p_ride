import 'package:flutter/material.dart';

class TipDriver extends StatelessWidget {
  static const routeName = '/tip_driver';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
              ' Vitae aliquam at vehicula vitae rhoncus montes.'
              ' Sed dapibus vitae.',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
