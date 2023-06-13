import 'package:flutter/material.dart';
import './notification.dart';
import './terms_and_Policy.dart';
import './about_us.dart';

class SettingsScreen extends StatelessWidget {
  static const routeName = '/Settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
        ),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          buildListContainer(
            'Notification',
            Icons.notifications,
            () {
              Navigator.of(context).pushNamed(NotificationScreen.routeName);
            },
          ),
          buildListContainer(
            'Terms & Policy',
            Icons.calendar_month,
            () {
              Navigator.of(context).pushNamed(TermsAndPolicy.routeName);
            },
          ),
          buildListContainer(
            'Contact Us',
            Icons.question_mark,
            () {
              Navigator.of(context).pushNamed(AboutUs.routeName);
            },
          ),
          buildListContainer(
            'Log Out',
            Icons.exit_to_app,
            () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      actionsAlignment: MainAxisAlignment.center,
                      content: const Text(
                        'Are you sure?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            elevation: 5,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(
                              'No',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor: const Color(0xff0071BC),
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(
                              'Yes',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  });
            },
          ),
        ],
      ),
    );
  }

  InkWell buildListContainer(
    String title,
    IconData icon,
    void Function() onPressed,
  ) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 5,
        ),
        color: const Color(0xffE6E6E6),
        child: Row(
          children: [
            CircleAvatar(
              radius: 12,
              child: Icon(
                icon,
                size: 15,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              title,
              style: const TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.chevron_right,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }
}
