import 'package:flutter/material.dart';
import 'package:p_rides/screens/driver_rating_screen.dart';
import 'package:p_rides/screens/during_ride_screen.dart';
import 'package:p_rides/screens/forgot_password/change_password_screen.dart';
import 'package:p_rides/screens/driver_reg/registeration_five.dart';
import 'package:p_rides/screens/driver_reg/registeration_four.dart';
import 'package:p_rides/screens/driver_reg/registeration_one.dart';
import 'package:p_rides/screens/driver_reg/registeration_seven.dart';
import 'package:p_rides/screens/driver_reg/registeration_six.dart';
import 'package:p_rides/screens/driver_reg/registeration_three.dart';
import 'package:p_rides/screens/driver_reg/registeration_two.dart';
import 'package:p_rides/screens/forgot_password/forgot_password_screen.dart';
import 'package:p_rides/screens/location_screen.dart';
import 'package:p_rides/screens/modeOfPayment_Screen.dart';
import 'package:p_rides/screens/onboarding_screen.dart';
import 'package:p_rides/screens/otp/otp_screen_passenger.dart';
import 'package:p_rides/screens/ride_detail_2.dart';
import 'package:p_rides/screens/ride_detail_3.dart';
import 'package:p_rides/screens/ride_details_screen.dart';
import 'package:p_rides/screens/sign_up/signup_screen.dart';
import 'package:p_rides/screens/signing/signing_as_driver.dart';
import 'package:p_rides/screens/signing/signing_as_passenger.dart';
import 'package:p_rides/screens/signing/signing_screen.dart';
import 'package:p_rides/screens/tip_driver_screen.dart';
import 'package:p_rides/screens/trip_details_screen.dart';
import './screens/splash_screen.dart';
import 'screens/driver_reg/registeration_eight.dart';
import 'screens/forgot_password/otp_change_password.dart';
import 'screens/home.dart';
import 'screens/home_two.dart';
import 'screens/otp/otp_screen_driver.dart';
import 'screens/sign_up/sign_up_driver.dart';
import 'screens/sign_up/sign_up_passenger.dart';
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
import './screens/search_screen.dart';
import './screens/book_ride.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'P Rides',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            fontFamily: 'Raleway',
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        OnboardingScreen.routeName: (context) => const OnboardingScreen(),
        SignUpScreen.routeName: (context) => const SignUpScreen(),
        SignUpAsDriver.routeName: (context) => const SignUpAsDriver(),
        SignUpAsPassenger.routeName: (context) => const SignUpAsPassenger(),
        OTPScreenPassenger.routeName: (context) => const OTPScreenPassenger(),
        OTPScreenDriver.routeName: (context) => const OTPScreenDriver(),
        RegistrationOne.routeName: (context) => const RegistrationOne(),
        RegistrationTwo.routeName: (context) => const RegistrationTwo(),
        RegistrationThree.routeName: (context) => const RegistrationThree(),
        RegistrationFour.routeName: (context) => const RegistrationFour(),
        RegistrationFive.routeName: (context) => const RegistrationFive(),
        RegistrationSix.routeName: (context) => const RegistrationSix(),
        RegistrationSeven.routeName: (context) => const RegistrationSeven(),
        RegistrationEight.routeName: (context) => const RegistrationEight(),
        SigningScreen.routeName: (context) => const SigningScreen(),
        SigningAsDriver.routeName: (context) => const SigningAsDriver(),
        SigningAsPassenger.routeName: (context) => const SigningAsPassenger(),
        ForgotPassword.routeName: (context) => const ForgotPassword(),
        ChangePasswordScreen.routeName: (context) =>
            const ChangePasswordScreen(),
        OTPChangePassword.routeName: (context) => const OTPChangePassword(),
        HomeScreen.routeName: (context) => HomeScreen(),
        HomeTwo.routeName: (context) => const HomeTwo(),
        LocationScreen.routeName: (context) => const LocationScreen(),
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
        SearchScreen.routeName: (context) => SearchScreen(),
        BookRideScreen.routeName: (context) => BookRideScreen(),
        ModeOfPayment.routeName: (context) => ModeOfPayment(),
        DuringRideScreen.routeName: (context) => DuringRideScreen(),
        TripDetails.routeName: (context) => TripDetails(),
        TipDriver.routeName: (context) => TipDriver(),
        DriverRatingScreen.routeName: (context) => DriverRatingScreen(),
        RideDetails.routeName: (context) => RideDetails(),
        RideDetails2.routeName: (context) => RideDetails2(),
        RideDetail3.routeName: (context) => RideDetail3(),
      },
    );
  }
}
