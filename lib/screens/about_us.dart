import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  static const routeName = '/AboutUs';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'About Us',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              ''
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
              'Vitae aliquam at vehicula vitae rhoncus montes. '
              'Sed dapibus vitae.\n'
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
              'Vitae aliquam at vehicula vitae rhoncus montes. '
              'Sed dapibus vitae.',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Contact Us',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
              'Vitae aliquam at vehicula vitae rhoncus montes. '
              'Sed dapibus vitae.\n'
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
              'Vitae aliquam at vehicula vitae rhoncus montes. '
              'Sed dapibus vitae.',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            Image.asset(
              'images/p_rides_logo.png',
              height: 100,
              fit: BoxFit.fitHeight,
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
