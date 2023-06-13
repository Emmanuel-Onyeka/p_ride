import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:p_rides/screens/payment_method.dart';
import './promotion.dart';
import './work_rides.dart';
import './ride_history.dart';
import './intercity.dart';
import './settings.dart';
import './profile_screen.dart';
import './about_us.dart';

class PassengerDashboard extends StatelessWidget {
  static const routeName = '/passenger_dashboard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      'images/img.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 23,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Nekabari',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 25,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(ProfileScreen.routeName);
                        },
                        child: const Text(
                          'View Profile',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              buildListTile(
                icon: Icons.credit_card,
                title: 'Payment methods',
                onTap: () {
                  Navigator.of(context).pushNamed(PaymentMethod.routeName);
                },
              ),
              buildListTile(
                icon: FontAwesomeIcons.tag,
                title: 'Promotions',
                onTap: () {
                  Navigator.of(context).pushNamed(PromotionScreen.routeName);
                },
              ),
              buildListTile(
                icon: Icons.shopping_bag_outlined,
                title: 'Work rides',
                onTap: () {
                  Navigator.of(context).pushNamed(WorkRides.routeName);
                },
              ),
              buildListTile(
                icon: Icons.access_time,
                title: 'Ride history',
                onTap: () {
                  Navigator.of(context).pushNamed(RideHistory.routeName);
                },
              ),
              buildListTile(
                icon: Icons.keyboard_option_key,
                title: 'Intercity',
                onTap: () {
                  Navigator.of(context).pushNamed(Intercity.routeName);
                },
              ),
              buildListTile(
                icon: Icons.settings,
                title: 'Settings',
                onTap: () {
                  Navigator.of(context).pushNamed(SettingsScreen.routeName);
                },
              ),
              buildListTile(
                icon: Icons.info_outline,
                title: 'About us',
                onTap: () {
                  Navigator.of(context).pushNamed(AboutUs.routeName);
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Card buildListTile(
      {required IconData icon,
      required String title,
      required void Function() onTap}) {
    return Card(
      elevation: 0,
      child: ListTile(
        style: ListTileStyle.drawer,
        onTap: onTap,
        leading: CircleAvatar(
          radius: 25,
          child: Icon(
            icon,
            size: 22,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontFamily: 'Raleway',
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
