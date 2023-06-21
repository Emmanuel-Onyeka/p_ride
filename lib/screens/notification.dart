import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  static const routeName = '/notification';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notification',
        ),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.delete,
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 10,
        ),
        itemCount: 4,
        itemBuilder: (ctx, index) {
          return const ListTile(
            //Todo: know which screen to use
            contentPadding: EdgeInsets.zero,
            leading: CircleAvatar(
              radius: 23,
              child: Icon(
                Icons.calendar_month,
                size: 20,
              ),
            ),
            title: Text(
              'Lorem ipsum dolor sit amet, conseadipiscing elit.',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          );
        },
      ),
    );
  }
}
