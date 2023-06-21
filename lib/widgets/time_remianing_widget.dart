import 'package:flutter/material.dart';

class TimeRemaining extends StatelessWidget {
  TimeRemaining(this.time);

  String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30, top: 50, right: 30, bottom: 30),
      color: const Color(0xff0071BC),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Reaching destination in',
            style: TextStyle(
              fontFamily: 'Raleway',
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            '$time',
            style: const TextStyle(
              fontFamily: 'Raleway',
              fontSize: 45,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const LinearProgressIndicator(
            backgroundColor: Colors.grey,
            color: Colors.white,
            value: 0.8,
          ),
        ],
      ),
    );
  }
}
