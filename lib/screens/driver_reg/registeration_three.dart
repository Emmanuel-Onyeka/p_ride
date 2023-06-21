import 'package:flutter/material.dart';
import 'package:p_rides/constants/styles.dart';

import 'registeration_four.dart';

class RegistrationThree extends StatelessWidget {
  static const routeName = '/registration-three';

  const RegistrationThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Document',
                style: kHeaderText,
              ),
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  'We\'re legally required to ask you for some documents to sign up as a driver.\nDocuments scans and quality photos are accepted',
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                width: 327,
                height: 207,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 10,
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'Driver\'s Profile Photo',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Please provide a clear portrait picture of yourself.',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      SizedBox(
                        width: 152,
                        height: 39,
                        child: ElevatedButton.icon(
                          icon: const Icon(Icons.add),
                          onPressed: () {},
                          label: const Text('Upload File'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 314,
                width: 327,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      const Text(
                        'Autogenius Vehicle\nInspection Report',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      DropdownButtonFormField(
                        items: [],
                        onChanged: (value) {},
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Year'),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      DropdownButtonFormField(
                        items: [],
                        onChanged: (value) {},
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Month'),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      DropdownButtonFormField(
                        items: [],
                        onChanged: (value) {},
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Day'),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 152,
                        height: 39,
                        child: ElevatedButton.icon(
                          icon: const Icon(Icons.add),
                          onPressed: () {},
                          label: const Text('Upload File'),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamed(
                    context,
                    RegistrationFour.routeName,
                  ),
                  child: const Text('Next'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
