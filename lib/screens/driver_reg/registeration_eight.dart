import 'package:flutter/material.dart';

class RegistrationEight extends StatelessWidget {
  static const routeName = '/registration_eight';

  const RegistrationEight({super.key});

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
                  'Invoice issuer information',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  'This information appears on invoices\nsent to you and your clients.',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 30,
                ),
                DropdownButtonFormField(
                  items: const [],
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Type'),
                  ),
                ),
                const Text(
                  'To update, please contact customer support',
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
                    label: Text('Name'),
                  ),
                ),
                const Text(
                  'To update, please contact customer support',
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
                const Text(
                  'To update, please contact customer support',
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
                    label: Text('Reg. code'),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('VAT code'),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            backgroundColor: Colors.blue,
                            icon: Icon(
                              Icons.check,
                              size: 50,
                              color: Colors.white,
                            ),
                            title: Text(
                              'Success',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: const Text('Submit'),
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
