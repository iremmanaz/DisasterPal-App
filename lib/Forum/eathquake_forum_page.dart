import 'package:first_app/Forum/forum_comment.dart';
import 'package:flutter/material.dart';

class EarthquakeForumPage extends StatefulWidget {
  @override
  _EarthquakeForumPageState createState() => _EarthquakeForumPageState();
}

class _EarthquakeForumPageState extends State<EarthquakeForumPage> {
  final TextEditingController _questionController = TextEditingController();
  List<String> questions = [];
  List<List<String>> answers = [];
  List<ForumComment> forumComments = [
    ForumComment("İrem", "Manaz", "Admin", "Hi! Is everything okay?", []),
    ForumComment(
        "Elif",
        "Karabay",
        "Psychologist",
        "Remember, these tough times will pass. You are strong and resilient. Believe in yourself and don't hesitate to seek support. You are not alone; we will get through this together.",
        []),
    ForumComment("Melda", "Bolat", "Disaster Victim",
        "I could not think about the last earthquake. It was horrible!", []),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Earthquake Forum',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 49, 49, 49),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _questionController,
                decoration: InputDecoration(
                  labelText: 'Ask a question about earthquake',
                  border: OutlineInputBorder(),
                  labelStyle: TextStyle(color: Colors.white),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  if (_questionController.text.isNotEmpty) {
                    setState(() {
                      questions.add(_questionController.text);
                      answers.add([]);
                      _questionController.clear();
                    });
                  }
                },
                child: Text('Submit', style: TextStyle(color: Colors.black)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 255, 205, 56),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: questions.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Color.fromARGB(255, 70, 70, 70),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            questions[index],
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          SizedBox(height: 10),
                          for (var answer in answers[index])
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                answer,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Write an answer',
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(color: Colors.white),
                            ),
                            style: TextStyle(color: Colors.white),
                            onSubmitted: (value) {
                              if (value.isNotEmpty) {
                                setState(() {
                                  answers[index].add(value);
                                });
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              Text(
                'Forum Comments',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: forumComments.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Color.fromARGB(255, 70, 70, 70),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '${forumComments[index].name} ${forumComments[index].surname} (${forumComments[index].title})',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          SizedBox(height: 5),
                          Text(
                            forumComments[index].comment,
                            style: TextStyle(color: Colors.white),
                          ),
                          for (var reply in forumComments[index].replies)
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                reply,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                            ),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Write a reply',
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(color: Colors.white),
                            ),
                            style: TextStyle(color: Colors.white),
                            onSubmitted: (value) {
                              if (value.isNotEmpty) {
                                setState(() {
                                  forumComments[index].replies.add(value);
                                });
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
