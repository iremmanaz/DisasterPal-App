import 'package:flutter/material.dart';
import 'User_data.dart'; // UserData sınıfını içeri aktar
import 'Database_Helper.dart'; // DatabaseHelper sınıfını içeri aktar

class ProfilePage extends StatelessWidget {
  final UserData user;

  ProfilePage({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.blue, // Profil sayfasının app bar rengi
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Membership Type: ${user.membershipType}"),
            Text("Nickname: ${user.nickname}"),
            Text("Name: ${user.name}"),
            Text("Surname: ${user.surname}"),
            Text("Birth Date: ${user.birth_date}"),
            Text("Address: ${user.address}"),
            Text("Email: ${user.email}"),
          ],
        ),
      ),
    );
  }
}
