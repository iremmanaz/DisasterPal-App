import 'package:flutter/material.dart';
import 'User_data.dart'; // UserData sınıfını içeri aktar
import 'Database_Helper.dart'; // DatabaseHelper sınıfını içeri aktar

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();
  final TextEditingController nicknameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController birthDateController = TextEditingController();
  final TextEditingController membershipController = TextEditingController();

  String selectedMembershipType = 'Select Membership Type';
  List<String> membershipTypes = [
    'Psychiatrist',
    'Psychologist',
    'Disaster Specialist',
    'Disaster Victim',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign Up Page",
          style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255)), // AppBar yazı rengi
        ),
        backgroundColor: const Color.fromARGB(255, 49, 49, 49),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Image.asset(
                'C:/Users/iremm/Desktop/flutter_projects/first_app/images/logo.png',
                width: 300,
                height: 300,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButtonFormField<String>(
                  value: selectedMembershipType,
                  items: [
                    DropdownMenuItem(
                      value: 'Select Membership Type',
                      child: Text('Select Membership Type'),
                    ),
                    ...membershipTypes.map((type) {
                      return DropdownMenuItem<String>(
                        value: type,
                        child: Text(type),
                      );
                    }).toList(),
                  ],
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedMembershipType = newValue!;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'Membership Type',
                    border: OutlineInputBorder(),
                    labelStyle:
                        TextStyle(color: const Color.fromARGB(255, 49, 49, 49)),
                    filled: true, // Arka planı doldur
                    fillColor: const Color.fromARGB(
                        255, 49, 49, 49), // Arka plan rengi
                  ),
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: nicknameController,
                  decoration: InputDecoration(
                    labelText: 'Nickname',
                    border: OutlineInputBorder(),
                    labelStyle:
                        TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: nameController, // Controller for name input
                  decoration: InputDecoration(
                    labelText: 'Name', // Label for name input
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: surnameController, // Controller for name input
                  decoration: InputDecoration(
                    labelText: 'Surname', // Label for name input
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: birthDateController, // Controller for name input
                  decoration: InputDecoration(
                    labelText: 'Birth Date', // Label for name input
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: addressController, // Controller for name input
                  decoration: InputDecoration(
                    labelText: 'Address', // Label for name input
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                    labelStyle:
                        TextStyle(color: Colors.white), // Label yazı rengi
                  ),
                  style:
                      TextStyle(color: Colors.white), // Input alanı yazı rengi
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    labelStyle:
                        TextStyle(color: Colors.white), // Label yazı rengi
                  ),
                  obscureText: true,
                  style:
                      TextStyle(color: Colors.white), // Input alanı yazı rengi
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: confirmPasswordController,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    border: OutlineInputBorder(),
                    labelStyle:
                        TextStyle(color: Colors.white), // Label yazı rengi
                  ),
                  obscureText: true,
                  style:
                      TextStyle(color: Colors.white), // Input alanı yazı rengi
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_validateInputs()) {
                    _signUp();
                    Navigator.pushNamed(context, '/login');
                  } else {
                    _showErrorDialog();
                  }
                },
                child: Text('Sign Up', style: TextStyle(color: Colors.black)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 205, 56),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool _validateInputs() {
    return emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty;
  }

  void _signUp() {
    String nickname = nicknameController.text;
    String name = nameController.text;
    String surname = surnameController.text;
    String birth_date = birthDateController.text;
    String address = addressController.text;
    String email = emailController.text;
    String password = passwordController.text;
    String membershipType = selectedMembershipType; // Seçilen üyelik türü
    UserData newUser = UserData(
      nickname: nickname,
      name: name,
      surname: surname,
      birth_date: birth_date,
      address: address,
      email: email,
      password: password,
      membershipType: membershipType, // Üyelik türü bilgisini ekle
    );
    registeredUsers.add(newUser);

    // Veritabanına kaydetme
    DatabaseHelper.instance.insertUser(newUser);
  }

  void _showErrorDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Error',
            style: TextStyle(
                color: const Color.fromARGB(
                    255, 0, 0, 0)), // AlertDialog yazı rengi
          ),
          content: Text(
            'Email and Password cannot be empty.',
            style: TextStyle(
                color: const Color.fromARGB(
                    255, 0, 0, 0)), // AlertDialog içerik yazı rengi
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                'OK',
                style: TextStyle(
                    color: const Color.fromARGB(
                        255, 9, 9, 9)), // AlertDialog düğme yazı rengi
              ),
            ),
          ],
        );
      },
    );
  }
}
