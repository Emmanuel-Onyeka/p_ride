import 'package:flutter/material.dart';

class WorkRides extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Work rides',
          style: TextStyle(color: Colors.black),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
                //height: 30,
                ),
            Container(
              height: 120,
              width: 100,
              foregroundDecoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'images/img_wr1.png',
                    ),
                    fit: BoxFit.contain),
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset('images/img_wr2.png'),
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
              'Vitae aliquam at vehicula vitae rhoncus montes.'
              ' Sed dapibus vitae.',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
