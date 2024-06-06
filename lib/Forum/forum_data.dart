import 'package:first_app/sign%20up%20and%20log%20in/User_data.dart';

class ForumData {
  final String name;
  final String surname;
  final String title;
  final String comment;

  ForumData({
    required this.name,
    required this.surname,
    required this.title,
    required this.comment,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'surname': surname,
      'title': title,
      'comment': comment,
    };
  }
}

List<ForumData> forumComments = [];

void addComment(String comment) {
  if (currentUser != null) {
    forumComments.add(ForumData(
      name: currentUser!.name,
      surname: currentUser!.surname,
      title: currentUser!.membershipType,
      comment: comment,
    ));
    print('Comment added by ${currentUser!.name} ${currentUser!.surname}');
  } else {
    print('No user is logged in');
  }
}
