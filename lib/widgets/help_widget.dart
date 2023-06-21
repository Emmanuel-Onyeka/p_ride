import 'package:flutter/material.dart';

class HelpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: const Color(0xff181B20),
          padding: const EdgeInsets.all(10),
          child: const Text(
            'Do you need help?',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          color: const Color(0xff0071BC),
          child: Column(
            children: const [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Color(0xff0071BC),
                  child: Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  'Call P-Rides safety line',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Color(0xff0071BC),
                  child: Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  'Call the nearest Police station',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Color(0xff0071BC),
                  child: Icon(
                    Icons.car_crash,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  'Report a crash',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
