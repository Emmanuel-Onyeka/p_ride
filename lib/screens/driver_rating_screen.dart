import 'package:flutter/material.dart';
import 'package:p_rides/screens/tip_driver_screen.dart';

class DriverRatingScreen extends StatelessWidget {
  const DriverRatingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Rating',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            const Text(
              'How was your trip with David?',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
              ' Vitae aliquam at vehicula vitae rhoncus montes. '
              'Sed dapibus vitae.',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.star,
                  size: 40,
                  color: Color(0xff0071BC),
                ),
                Icon(
                  Icons.star,
                  size: 40,
                  color: Color(0xff0071BC),
                ),
                Icon(
                  Icons.star,
                  size: 40,
                  color: Color(0xff0071BC),
                ),
                Icon(
                  Icons.star,
                  size: 40,
                  color: Color(0xff0071BC),
                ),
                Icon(
                  Icons.star,
                  size: 40,
                  color: Color(0xff0071BC),
                ),
              ],
            ),
            const SizedBox(
              height: 45,
            ),
            const Card(
              color: Color(0xffc4c4c4),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 15,
                ),
                child: Text(
                  'Additional information',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: (context),
                    builder: (ctx) {
                      return const AlertDialog(
                        backgroundColor: Color(0xff0071BC),
                        icon: Icon(
                          Icons.check,
                          size: 50,
                          color: Colors.white,
                        ),
                        content: Text(
                          'Successful',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      );
                    });
                Navigator.of(context).pushNamed(TipDriver.routeName);
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 10,
                ),
              ),
              child: const Text(
                'Submit Review',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
