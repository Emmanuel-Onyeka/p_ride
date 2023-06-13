import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:p_rides/screens/invite_friends.dart';

class Account extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Account',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              fontFamily: 'Montserrat',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: const Color(0xff0071BC),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                ListTile(
                  horizontalTitleGap: 20,
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                    radius: 30,
                    child: Image.asset(
                      'images/img.png',
                    ),
                  ),
                  title: const Text(
                    'Nekabari',
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  subtitle: const Text(
                    'ER8484',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
                const Text(
                  '+234 000 000 000',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const ListTile(
            leading: CircleAvatar(
              child: Icon(FontAwesomeIcons.car),
            ),
            title: Text(
              'Vehicles',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: FittedBox(
              child: Text(
                'MX 56 57 VB  755 Toyota Corolla 2009',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            trailing: Icon(Icons.chevron_right),
          ),
          const Divider(),
          const ListTile(
            leading: CircleAvatar(
              child: (Icon(Icons.folder)),
            ),
            title: Text(
              'Documents',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
            trailing: Icon(Icons.chevron_right),
          ),
          const Divider(),
          ListTile(
            onTap: () {
              Navigator.of(context).pushNamed(InviteFriends.routeName);
            },
            leading: const CircleAvatar(
              child: Icon(FontAwesomeIcons.gift),
            ),
            title: const Text(
              'Invite Friends',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
            trailing: const Icon(Icons.chevron_right),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
