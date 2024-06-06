import 'package:flutter/material.dart';

class DonationPage extends StatefulWidget {
  @override
  _DonationPageState createState() => _DonationPageState();
}

class _DonationPageState extends State<DonationPage> {
  final _formKey = GlobalKey<FormState>();
  String _chosenOrganization = 'Choose an Organization';
  double _donationAmount = 0.0;

  List<String> organizations = [
    'Red Crescent',
    'Lösev',
    'TEMA Foundation',
    'Ahbap Association',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Donate'),
        backgroundColor: const Color.fromARGB(255, 49, 49, 49),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              DropdownButtonFormField(
                value: _chosenOrganization,
                onSaved: (value) {
                  _chosenOrganization = value.toString();
                },
                onChanged: (newValue) {
                  setState(() {
                    _chosenOrganization = newValue.toString();
                  });
                },
                items: organizations.map((organization) {
                  return DropdownMenuItem(
                    child: Text(organization),
                    value: organization,
                  );
                }).toList(),
                decoration: InputDecoration(
                  labelText: 'Donation Organization',
                  icon: Icon(Icons.favorite),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Donation Amount (₺)',
                  icon: Icon(Icons.monetization_on),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                onSaved: (value) {
                  _donationAmount = double.parse(value ?? '0');
                },
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      // Donation processing logic here
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Donation Confirmation'),
                            content: Text(
                                'You have donated $_donationAmount ₺ to $_chosenOrganization.'),
                            actions: <Widget>[
                              TextButton(
                                child: Text('OK'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: Text('Donate'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Color.fromARGB(255, 255, 205, 56),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
