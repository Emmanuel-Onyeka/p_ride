import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:p_rides/screens/my_rides.dart';
import './pick_up.dart';
import './account.dart';
import './notification.dart';
import './settings.dart';
import './passenger_dashboard.dart';

class MainScreen extends StatefulWidget {
  static const routeName = '/main_screen';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  PageController _controller = PageController();
  int bottomIndex = 0;

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //Todo: change the position of this list
    List<Widget> screens = [
      PickUp(_key),
      Account(),
      MyRides(),
      NotificationScreen(),
      SettingsScreen(),
    ];

    return Scaffold(
      key: _key,
      drawer: Drawer(
        child: PassengerDashboard(),
      ),
      body: SafeArea(
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _controller,
          children: screens,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomIndex,
        onTap: (value) {
          setState(() {
            bottomIndex = value;
          });
          _controller.animateToPage(
            bottomIndex,
            duration: Duration(milliseconds: 500),
            curve: Curves.easeIn,
          );
        },
        backgroundColor: const Color(0xff0071BC),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey.shade500,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.clock),
            label: 'Ride History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
      ),
    );
  }
}
