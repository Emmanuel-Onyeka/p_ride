import 'package:flutter/material.dart';

class PickUp extends StatefulWidget {
  @override
  State<PickUp> createState() => _PickUpState();

  PickUp(this.scaffoldKey);

  GlobalKey<ScaffoldState> scaffoldKey;
}

class _PickUpState extends State<PickUp> {
  bool isOnline = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          color: isOnline ? const Color(0xff0071BC) : const Color(0xffEC0F0F),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: () {
                        widget.scaffoldKey.currentState!.openDrawer();
                      },
                      icon: const Icon(Icons.menu),
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    isOnline ? 'Online' : 'Offline',
                    style: const TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 25,
                        color: Colors.white),
                  ),
                  Switch(
                    value: isOnline,
                    activeColor: Colors.white,
                    onChanged: (value) {
                      setState(() {
                        isOnline = value;
                      });
                    },
                  ),
                ],
              ),
              const Text(
                '10 May, 6:00 - Jun 7:23',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        if (isOnline)
          Expanded(
            child: Stack(
              children: [
                Image.asset(
                  'images/img_5.png',
                  //height: 250,
                  fit: BoxFit.fitHeight,
                ),
                Positioned(
                  right: 0,
                  top: 100,
                  child: Image.asset(
                    'images/car_icon.png',
                  ),
                ),
                const Positioned(
                  right: 0,
                  bottom: 0,
                  width: 100,
                  child: Card(
                    margin: EdgeInsets.only(
                      left: 100,
                    ),
                    shape: CircleBorder(),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.my_location,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        const SizedBox(
          height: 20,
        ),
        if (isOnline)
          Expanded(
            child: Table(
              children: [
                TableRow(
                  children: [
                    buildGestureDetector(
                      title: 'Trip',
                      subtitle: '10/20',
                    ),
                    buildGestureDetector(
                      title: 'Acceptance Rate',
                      subtitle: '50%',
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    buildGestureDetector(
                      title: 'Total Earnings',
                      subtitle: 'N500.00',
                    ),
                    buildGestureDetector(
                      title: 'Driver Score',
                      subtitle: '90%',
                    ),
                  ],
                ),
              ],
            ),
          ),
      ],
    );
  }

  GestureDetector buildGestureDetector({
    required String title,
    required String subtitle,
  }) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        margin: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 8,
        ),
        color: const Color(0xff0071BC),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              FittedBox(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                    size: 20,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
