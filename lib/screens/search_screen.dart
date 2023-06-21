import 'package:flutter/material.dart';
import 'book_ride.dart';

class SearchScreen extends StatelessWidget {
  static const routeName = '/search_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back,
                  size: 30,
                ),
                alignment: Alignment.topLeft,
              ),
              Flexible(
                child: Image.asset('assets/images/search_circle.png'),
              ),
              Row(
                children: [
                  const Spacer(),
                  Material(
                    elevation: 4,
                    shape: CircleBorder(),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.my_location),
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.all(10),
                    ),
                  ),
                ],
              ),
              const Text(
                'Move pin to adjust pickup point',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Confirm your Pickup',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const ListTile(
                leading: Icon(Icons.location_on),
                title: Text(
                  'Stadium road Port Harcourt',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(BookRideScreen.routeName);
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'Apply',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
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
