import 'package:flutter/material.dart';

class NeedsReceivingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Needs Receiving'),
        backgroundColor: const Color.fromARGB(255, 49, 49, 49),
      ),
      body: Center(
        child: Text('Needs Receiving Page Content'),
      ),
    );
  }
}
