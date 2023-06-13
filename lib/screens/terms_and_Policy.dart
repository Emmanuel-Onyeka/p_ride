import 'package:flutter/material.dart';

class TermsAndPolicy extends StatelessWidget {
  static const routeName = '/T&C_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Terms and Privacy Policy',
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
            vertical: 10,
          ),
          child: Column(
            children: [
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                'Vitae aliquam at vehicula vitae rhoncus montes. '
                'Sed dapibus vitae.\n\n'
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                'Vitae aliquam at vehicula vitae rhoncus montes. '
                'Sed dapibus vitae.\n\n'
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                'Vitae aliquam at vehicula vitae rhoncus montes. '
                'Sed dapibus vitae.\n\n'
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
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                  ),
                  const Text(
                    'Agree to Privacy and Policy',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
