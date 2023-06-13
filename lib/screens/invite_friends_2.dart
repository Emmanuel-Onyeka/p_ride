import 'package:flutter/material.dart';

class InviteFriends2 extends StatefulWidget {
  static const routeName = '/invite_friends_2';

  @override
  State<InviteFriends2> createState() => _InviteFriends2State();
}

class _InviteFriends2State extends State<InviteFriends2> {
  bool addedFriend = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              color: const Color(0xff0071BC),
              child: Material(
                color: const Color(0xffBAB3B3),
                elevation: 3,
                borderRadius: BorderRadius.circular(5),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                children: [
                  buildListTile(image: 'images/img.png', name: 'Nekabari'),
                  buildListTile(image: 'images/img_1.png', name: 'Anna'),
                  buildListTile(image: 'images/img_2.png', name: 'Johnson'),
                  buildListTile(image: 'images/img_3.png', name: 'Patience'),
                  buildListTile(image: 'images/img_4.png', name: 'Victoria'),
                  buildListTile(image: 'images/img_2.png', name: 'Gloria'),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff0071BC),
                ),
                child: const Text(
                  'Confirm',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListTile buildListTile({
    required String image,
    required String name,
  }) {
    return ListTile(
      horizontalTitleGap: 5,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 0,
        vertical: 5,
      ),
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.white,
        child: Image.asset(image),
      ),
      trailing: Card(
        color: addedFriend ? Colors.grey : const Color(0xff0071BC),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: IconButton(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 1,
          ),
          onPressed: () {
            setState(() {
              addedFriend = !addedFriend;
            });
          },
          icon: Icon(addedFriend ? Icons.check : Icons.add),
          color: Colors.white,
        ),
      ),
      title: Text(
        name,
        style: TextStyle(
          fontFamily: 'Raleway',
          fontSize: 15,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
