import 'package:flutter/material.dart';
import 'package:p_rides/screens/ride_detail_3.dart';
import 'package:p_rides/screens/ride_details_screen.dart';
import 'package:p_rides/widgets/stepperWidget.dart';

class DuringRideScreen extends StatelessWidget {
  static const routeName = '/DuringRide';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
              child: Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [
                  const Image(
                    image: AssetImage('assets/images/map.png'),
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  const Positioned(
                    top: 0,
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Image(
                      image: AssetImage('assets/images/location.png'),
                    ),
                  ),
                  Card(
                    color: const Color(0xff0071BC),
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Meet David at the pickup point',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: 30,
                    right: 30,
                    child: Card(
                      shape: CircleBorder(),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Icon(Icons.my_location),
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: 10,
                    right: 0,
                    left: 0,
                    child: Icon(Icons.keyboard_arrow_up),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onVerticalDragUpdate: (details) {
                if (details.delta.dy < -6) {
                  Navigator.of(context).pushNamed(RideDetails.routeName);
                }
              },
              child: Column(
                children: [
                  Container(
                    color: const Color(0xffF2F2F2),
                    height: 55,
                    child: const Center(
                      child: Text(
                        'Your Ride is arriving in 5 mins',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: const Color(0xff0071BC),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 35,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: const Color(0xff0071BC),
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
                                  'Nekabari Victor',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                                const Text(
                                  'Toyota Camry',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  color: const Color(0xfff2f2f2),
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
                            const SizedBox(
                              width: 20,
                            ),
                            const CircleAvatar(
                              backgroundColor: Color(0xfff2f2f2),
                              child: Icon(Icons.mail),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              backgroundColor: const Color(0xfff2f2f2),
                              child: IconButton(
                                icon: Icon(Icons.phone),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (ctx) => RideDetail3()));
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
