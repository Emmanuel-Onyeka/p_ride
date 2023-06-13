import 'package:flutter/material.dart';

class PaymentMethod extends StatelessWidget {
  static const routeName = '/paymentMethod';

  List<String> images = [
    'images/img.png',
    'images/img_1.png',
    'images/img_2.png',
    'images/img_3.png',
    'images/img_4.png',
  ];

  List<String> names = [
    'Nekabari',
    'Anna',
    'Harriet',
    'Nekabari',
    'Anna',
  ];

  List<int> price = [
    400,
    1000,
    800,
    400,
    1000,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.menu),
                    ),
                    Positioned(
                      right: 2,
                      top: 4,
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 3,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 21,
              ),
              const Text(
                'Payment methods',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                  color: const Color(0xff0071BC),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Your balance',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Raleway'),
                    ),
                    Text(
                      '\u20A6500.00',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 27,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Payment History',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: names.length,
                  itemBuilder: (ctx, index) {
                    return ListTile(
                      title: Text(
                        names[index],
                        style: const TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      subtitle: Text(
                        '\u20A6${price[index].toString()}',
                        style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          images[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff0071BC),
                      padding: const EdgeInsets.all(7.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      )),
                  onPressed: () {},
                  child: const Text(
                    'Confirm',
                    style: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
