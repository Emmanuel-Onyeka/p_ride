import 'package:flutter/material.dart';
import './screens/profile_screen.dart';
import './screens/passenger_dashboard.dart';
import './screens/payment_method.dart';
import './screens/promotion.dart';
import './screens/work_rides.dart';
import './screens/ride_history.dart';
import './screens/intercity.dart';
import './screens/settings.dart';
import './screens/notification.dart';
import './screens/terms_and_Policy.dart';
import './screens/about_us.dart';
import './screens/main_screen.dart';
import './screens/invite_friends.dart';
import './screens/invite_friends_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'P Rides',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0,
          titleTextStyle: TextStyle(
            fontFamily: 'Raleway',
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: MainScreen.routeName,
      routes: {
        ProfileScreen.routeName: (ctx) => ProfileScreen(),
        PassengerDashboard.routeName: (ctx) => PassengerDashboard(),
        PaymentMethod.routeName: (ctx) => PaymentMethod(),
        PromotionScreen.routeName: (ctx) => PromotionScreen(),
        WorkRides.routeName: (ctx) => WorkRides(),
        RideHistory.routeName: (ctx) => RideHistory(),
        Intercity.routeName: (ctx) => Intercity(),
        SettingsScreen.routeName: (ctx) => SettingsScreen(),
        NotificationScreen.routeName: (ctx) => NotificationScreen(),
        TermsAndPolicy.routeName: (ctx) => TermsAndPolicy(),
        AboutUs.routeName: (ctx) => AboutUs(),
        MainScreen.routeName: (ctx) => MainScreen(),
        InviteFriends.routeName: (ctx) => InviteFriends(),
        InviteFriends2.routeName: (ctx) => InviteFriends2(),
      },
    );
  }
}
