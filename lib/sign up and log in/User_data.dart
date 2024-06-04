// user_data.dart

class UserData {
  final String membershipType;
  final String nickname;
  final String name;
  final String surname;
  final String birth_date;
  final String address;
  final String email;
  final String password;

  UserData({
    required this.membershipType,
    required this.nickname,
    required this.name,
    required this.surname,
    required this.birth_date,
    required this.address,
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return {
      'membershipType': membershipType,
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

List<UserData> registeredUsers = [
  UserData(
    membershipType: 'admin',
    nickname: 'İremmanaz',
    name: 'irem',
    surname: 'Manaz',
    birth_date: '25/04/2000',
    address: 'Esnaf Sanatkarlar sitesi Batıkent',
    email: 'iremmanaz@hotmail.com',
    password: '123456',
  ),
  UserData(
    membershipType: 'psychologist',
    nickname: 'PsychLover',
    name: 'Elif',
    surname: 'Karabay',
    birth_date: '06/02/2001',
    address: '456 Elm St, Othertown',
    email: 'elifkarabay@gmail.com',
    password: '987654',
  ),
  UserData(
    membershipType: 'disaster specialist',
    nickname: 'DisasterMan',
    name: 'Melda',
    surname: 'Bolat',
    birth_date: '11/03/2001',
    address: '789 Oak Ave, Another Town',
    email: 'melda@outlook.com',
    password: 'melda123',
  ),
  UserData(
    membershipType: 'disaster victim',
    nickname: 'Survivor123',
    name: 'Yiğit',
    surname: 'Özsen',
    birth_date: '15/05/2000',
    address: '101 Pine St, Somewhere',
    email: 'yigitozsen@gmail.com',
    password: 'yigit987',
  ),
  UserData(
    membershipType: 'psychiatrist',
    nickname: 'MindHealer',
    name: 'Mehmet',
    surname: 'Külüş',
    birth_date: '20/02/2000',
    address: '321 Cedar St, Nowhere',
    email: 'mehmet@hotmail.com',
    password: '202521',
  ),
];
