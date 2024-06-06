import 'package:first_app/donation_data.dart';
import 'package:flutter/material.dart';
import 'donation_data.dart'; // İlgili sınıfı içe aktarın

class DonationPage extends StatefulWidget {
  @override
  _DonationPageState createState() => _DonationPageState();
}

class _DonationPageState extends State<DonationPage> {
  TextEditingController productNameController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController organizationController = TextEditingController();

  List<Donation> donations = [];
  String selectedFoundationType = 'Select Foundation';
  List<String> foundationTypes = [
    'Yeşilay',
    'Akut',
    'Kızılay',
    'Ahbap',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Donate',
          style: TextStyle(color: Colors.white), // Renk ataması
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: productNameController,
              decoration: InputDecoration(labelText: 'Product Name'),
              style: TextStyle(
                  color:
                      const Color.fromARGB(255, 255, 255, 255)), // Renk ataması
            ),
            SizedBox(height: 12.0),
            TextField(
              controller: quantityController,
              decoration: InputDecoration(labelText: 'Amount'),
              keyboardType: TextInputType.number,
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255)), // Renk ataması
            ),
            SizedBox(height: 12.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonFormField<String>(
                value: selectedFoundationType,
                items: [
                  DropdownMenuItem(
                    value: 'Select Foundation',
                    child: Text('Select Foundation'),
                  ),
                  ...foundationTypes.map((type) {
                    return DropdownMenuItem<String>(
                      value: type,
                      child: Text(type),
                    );
                  }).toList(),
                ],
                onChanged: (String? newValue) {
                  setState(() {
                    selectedFoundationType = newValue!;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Foundation Type',
                  border: OutlineInputBorder(),
                  labelStyle:
                      TextStyle(color: const Color.fromARGB(255, 49, 49, 49)),
                  filled: true, // Arka planı doldur
                  fillColor:
                      const Color.fromARGB(255, 49, 49, 49), // Arka plan rengi
                ),
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  String productName = productNameController.text;
                  int quantity = int.tryParse(quantityController.text) ?? 0;
                  String organization = organizationController.text;

                  Donation newDonation = Donation(
                    productName: productName,
                    quantity: quantity,
                    organization: organization,
                  );

                  donations.add(newDonation);

                  // İşlenen verileri kullanabilir veya başka bir işlem yapabilirsiniz
                  print('New Donation: $newDonation');

                  // Text alanlarını temizle
                  productNameController.clear();
                  quantityController.clear();
                  organizationController.clear();
                });
              },
              child: Text(
                'Donate',
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0)), // Renk ataması
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(
                        255, 255, 205, 56)), // Buton arkaplan rengi
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: ListView.builder(
                itemCount: donations.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      'Product: ${donations[index].productName}',
                      style:
                          TextStyle(color: Colors.white), // Başlık metni rengi
                    ),
                    subtitle: Text(
                      'Amount: ${donations[index].quantity}\nFoundation: ${donations[index].organization}',
                      style:
                          TextStyle(color: Colors.white), // Altyazı metni rengi
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
