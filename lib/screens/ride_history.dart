import 'package:flutter/material.dart';

class RideHistory extends StatelessWidget {
  static const routeName = '/ride_history';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Ride History',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'January 2022',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              buildListTile(),
              buildListTile(),
              buildListTile(),
              buildListTile(),
              const Text(
                'February 2022',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              buildListTile(),
              buildListTile(),
              const Text(
                'April 2022',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              buildListTile(),
              buildListTile(),
              buildListTile(),
              buildListTile(),
            ],
          ),
        ),
      ),
    );
  }

  ListTile buildListTile(// required String title,
      // required IconData icon,
      // required String trailing,
      ) {
    return const ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: CircleAvatar(
        radius: 20,
        child: Icon(Icons.directions_car),
      ),
      title: Text(
        'Stadium Road, Port Harcourt',
        style: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 13.5,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Text(
        'N800',
        style: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
