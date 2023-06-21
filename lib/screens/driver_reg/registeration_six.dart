import 'package:flutter/material.dart';

import 'registeration_seven.dart';

class RegistrationSix extends StatelessWidget {
  static const routeName = '/registration-six';

  const RegistrationSix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                const Text(
                  'Payout account information',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  'We need your payment details to pay\nyou.',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Bank Account Holder Name'),
                  ),
                ),
                const Text(
                  'Bank account  holder name, person or company',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Address'),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Account Number'),
                  ),
                ),
                const Text(
                  'Your 10 digit Nigerian Mobile Wallet Number',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                DropdownButtonFormField(
                  items: [],
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    label: Text('Bank Name'),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Transit Number'),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                DropdownButtonFormField(
                  items: [],
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    label: Text('Type'),
                    border: OutlineInputBorder(),
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
                      RegistrationSeven.routeName,
                    ),
                    child: const Text('Next'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
