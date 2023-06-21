import 'package:flutter/material.dart';
import 'package:p_rides/widgets/stepperWidget.dart';
import 'package:p_rides/widgets/time_remianing_widget.dart';

class RideDetails2 extends StatelessWidget {
  static const routeName = '/ride_details_2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TimeRemaining('30 Mins'),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 35,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 35,
                      child: Image.asset('assets/images/header.png'),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Toyota Camry',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          color: const Color(0xffc4c4c4),
                          padding: const EdgeInsets.all(7),
                          child: const Text(
                            'MX 56 57 VB  755',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: StepperWidget(
                false,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
