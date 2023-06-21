import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import 'home_two.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home-screen';

  HomeScreen({super.key});

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      // drawer: AppDrawer(),
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
              height: 300,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    const Text(
                      'Where are you?',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Raleway',
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    const Text(
                      'Lorem ipsum dolor sit amet, consectetur\n adipiscing elit. Vitae aliquam at vehicula\n vitae rhoncus montes. Sed dapibus vitae.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Container(
                      width: 326.43,
                      height: 55.62,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Set automatically',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 326.43,
                      height: 55.62,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(229, 229, 229, 1),
                        ),
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                            context,
                            HomeTwo.routeName,
                          );
                        },
                        child: const Text(
                          'Set later',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.black,
                          ),
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
