import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';
import 'package:p_rides/screens/search_screen.dart';

class LocationScreen extends StatelessWidget {
  static const routeName = '/location_screen';

  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
                width: 269,
                height: 51,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(
                    207,
                    206,
                    206,
                    0.298,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: Text(
                    'Mon,  25 sept at PM- 5:00 PM',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 100,
                child: Row(
                  children: [
                    IconStepper(
                      lineLength: 35,
                      stepRadius: 15,
                      lineDotRadius: 0.1,
                      lineColor: Colors.black,
                      stepColor: Colors.white,
                      enableNextPreviousButtons: false,
                      icons: const [
                        Icon(
                          Icons.circle,
                          color: Colors.black,
                        ),
                        Icon(
                          Icons.circle,
                          color: Colors.black,
                          size: 10,
                        ),
                      ],
                      activeStep: 2,
                      direction: Axis.vertical,
                    ),
                    SizedBox(
                      width: 268,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Card(
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                'Stadium Road, Port Harcourt',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(SearchScreen.routeName);
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: const EdgeInsets.all(10),
                            ),
                            child: const Text(
                              'Search destination',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.home),
                ),
                title: Text(
                  'Add home',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
              const ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.work),
                ),
                title: Text(
                  'Add work',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(
                    Icons.star,
                    color: Colors.white,
                  ),
                  backgroundColor: Color(0xffC4C4C4),
                ),
                title: Text(
                  'Saved Places',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
              const ListTile(
                leading: CircleAvatar(
                  child: Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                  backgroundColor: Color(0xffC4C4C4),
                ),
                title: Text(
                  'University of Port Harcourt',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                subtitle: Text(
                  'Port Harcourt',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
              ),
              const ListTile(
                leading: CircleAvatar(
                  backgroundColor: Color(0xffC4C4C4),
                  child: Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  'Port Harcourt International Airport',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                subtitle: Text(
                  'Port Harcourt-Omagwa',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ),
              const ListTile(
                leading: CircleAvatar(
                  backgroundColor: Color(0xffC4C4C4),
                  child: Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  'Pleasure Park',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                subtitle: Text(
                  'Port Harcourt-Aba Express Road',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
