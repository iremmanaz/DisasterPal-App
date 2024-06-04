class UserData {
  final String nickname;
  final String name;
  final String surname;
  final String birth_date;
  final String address;
  final String email;
  final String password;

  UserData(
      {required this.nickname,
      required this.name,
      required this.surname,
      required this.birth_date,
      required this.address,
      required this.email,
      required this.password});
  Map<String, dynamic> toMap() {
    return {
      'nickname': nickname,
      'name': name,
      'surname': surname,
      'birth_date': birth_date,
      'address': address,
      'email': email,
      'password': password,
    };
  }
}

List<UserData> registeredUsers = []; // List to store registered users