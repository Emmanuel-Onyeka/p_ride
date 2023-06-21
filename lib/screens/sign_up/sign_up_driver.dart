import 'package:flutter/material.dart';
import 'package:p_rides/constants/styles.dart';
import 'package:p_rides/widgets/signup_widgets/form_driver_section.dart';

import '../../widgets/signup_widgets/form_passenger_section.dart';

class SignUpAsDriver extends StatefulWidget {
  static const routeName = '/sign-up-as-driver';

  const SignUpAsDriver({super.key});

  @override
  State<SignUpAsDriver> createState() => _SignUpAsDriverState();
}

class _SignUpAsDriverState extends State<SignUpAsDriver> {
  bool _isPassenger = false;
  bool _isDriver = false;

  void _isPassengerActive() {
    setState(() {
      _isPassenger = true;
      _isDriver = false;
    });
  }

  void _isDriverActive() {
    setState(() {
      _isPassenger = false;
      _isDriver = true;
    });
  }

  @override
  void initState() {
    _isDriver = true;
    _isPassenger = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 30),
              child: Column(
                children: [
                  const Text(
                    'Sign up as',
                    style: kHeaderText,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: _isPassengerActive,
                            child: _isPassenger
                                ? Container(
                                    width: 66,
                                    height: 66,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 5,
                                        color: Colors.blue,
                                      ),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.person,
                                      size: 50,
                                      color: Colors.grey,
                                    ),
                                  )
                                : Column(
                                    children: const [
                                      Icon(
                                        Icons.person,
                                        size: 50,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                          ),
                          const Text('Passenger')
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: _isDriverActive,
                            child: _isDriver
                                ? Container(
                                    width: 66,
                                    height: 66,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 5,
                                        color: Colors.blue,
                                      ),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.person,
                                      size: 50,
                                      color: Colors.grey,
                                    ),
                                  )
                                : Column(
                                    children: const [
                                      Icon(
                                        Icons.person,
                                        size: 50,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                          ),
                          const Text('Driver')
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  _isPassenger
                      ? FormPassengerSection(
                          isPassengerSignUp: _isPassenger,
                        )
                      : FormDriverSection(
                          isDriverSignUp: _isDriver,
                        ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
