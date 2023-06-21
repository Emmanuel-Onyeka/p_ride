import 'package:flutter/material.dart';

import 'location_screen.dart';

class HomeTwo extends StatelessWidget {
  static const routeName = '/home_two';

  const HomeTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/map.png',
                ),
              ),
            ),
          ),
          const Positioned(
            left: 30,
            top: 50,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 30,
              child: Icon(
                Icons.menu,
                color: Colors.black,
                size: 40,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 400,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Good morning Nekabari',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat',
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 326.43,
                      height: 55.62,
                      child: ElevatedButton.icon(
                        icon: const Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(229, 229, 229, 1),
                        ),
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                            context,
                            LocationScreen.routeName,
                          );
                        },
                        label: const Text(
                          'Where to?',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ),
                    ),
                    const ListTile(
                      leading: Icon(Icons.star),
                      title: Text(
                        'Saved places',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    const ListTile(
                      leading: Icon(Icons.location_on),
                      title: Text(
                        'Set location on map',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
