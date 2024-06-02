import 'package:flutter/material.dart';

class DonationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Donation'),
        backgroundColor: const Color.fromARGB(255, 49, 49, 49),
      ),
      body: Center(
        child: Text('Donation Page Content'),
      ),
    );
  }
}
