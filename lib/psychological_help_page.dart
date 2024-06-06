import 'dart:io';
import 'dart:typed_data';

import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:image_picker/image_picker.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class PsychologicalHelpPage extends StatefulWidget {
  const PsychologicalHelpPage({super.key});

  @override
  State<PsychologicalHelpPage> createState() => _PsychologicalHelpPageState();
}

class _PsychologicalHelpPageState extends State<PsychologicalHelpPage> {
  final Gemini gemini = Gemini.instance;

  List<ChatMessage> messages = [];
  ChatUser currentUser = ChatUser(id: "0", firstName: "User");
  ChatUser geminiUser = ChatUser(
    id: "1",
    firstName: "Gemini",
  );

  late stt.SpeechToText _speech;
  bool _isListening = false;
  String _text = '';

  List<String> disasterKeywords = [
    "earthquake", "flood", "disaster", "hurricane", "tornado", "tsunami",
    "fire", "wildfire", "landslide", "avalanche", "storm", "cyclone", "PTSD",
    "trauma", "anxiety", "depression", "mental health", "crisis", "emergency"
  ];

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
  }

  bool _isDisasterRelated(String text) {
    return disasterKeywords.any((keyword) => text.toLowerCase().contains(keyword));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Psychological Help Chat"),
      ),
      body: _buildUI(),
    );
  }

  Widget _buildUI() {
    return Column(
      children: <Widget>[
        Expanded(
          child: DashChat(
            currentUser: currentUser,
            onSend: _sendMessage,
            messages: messages,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              IconButton(
                icon: Icon(_isListening ? Icons.mic : Icons.mic_none),
                onPressed: _listen,
              ),
              Expanded(
                child: TextField(
                  onSubmitted: (value) {
                    _sendMessage(ChatMessage(
                      user: currentUser,
                      createdAt: DateTime.now(),
                      text: value,
                    ));
                  },
                  decoration: InputDecoration(
                    hintText: 'Type a message',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _listen() async {
    if (!_isListening) {
      bool available = await _speech.initialize(
        onStatus: (val) => print('onStatus: $val'),
        onError: (val) => print('onError: $val'),
      );
      if (available) {
        setState(() => _isListening = true);
        _speech.listen(
          onResult: (val) => setState(() {
            _text = val.recognizedWords;
            if (val.hasConfidenceRating && val.confidence > 0) {
              _sendMessage(ChatMessage(
                user: currentUser,
                createdAt: DateTime.now(),
                text: _text,
              ));
              _isListening = false;
              _speech.stop();
            }
          }),
        );
      }
    } else {
      setState(() => _isListening = false);
      _speech.stop();
    }
  }

  void _sendMessage(ChatMessage chatMessage) {
    if (_isDisasterRelated(chatMessage.text)) {
      setState(() {
        messages = [chatMessage, ...messages];
      });
      try {
        String question = chatMessage.text;
        List<Uint8List>? images;
        if (chatMessage.medias?.isNotEmpty ?? false) {
          images = [
            File(chatMessage.medias!.first.url).readAsBytesSync(),
          ];
        }
        gemini
            .streamGenerateContent(
          question,
          images: images,
        )
            .listen((event) {
          ChatMessage? lastMessage = messages.firstOrNull;
          if (lastMessage != null && lastMessage.user == geminiUser) {
            lastMessage = messages.removeAt(0);
            String response = event.content?.parts?.fold(
                    "", (previous, current) => "$previous ${current.text}") ??
                "";
            lastMessage.text += response;
            setState(
              () {
                messages = [lastMessage!, ...messages];
              },
            );
          } else {
            String response = event.content?.parts?.fold(
                    "", (previous, current) => "$previous ${current.text}") ??
                "";
            ChatMessage message = ChatMessage(
              user: geminiUser,
              createdAt: DateTime.now(),
              text: response,
            );
            setState(() {
              messages = [message, ...messages];
            });
          }
        });
      } catch (e) {
        print(e);
      }
    } else {
      setState(() {
        messages = [
          ChatMessage(
            user: geminiUser,
            createdAt: DateTime.now(),
            text: "Sorry, I can only help with disaster-related inquiries.",
          ),
          ...messages
        ];
      });
    }
  }

  void _sendMediaMessage() async {
    ImagePicker picker = ImagePicker();
    XFile? file = await picker.pickImage(
      source: ImageSource.gallery,
    );
    if (file != null) {
      ChatMessage chatMessage = ChatMessage(
        user: currentUser,
        createdAt: DateTime.now(),
        text: "Describe this picture?",
        medias: [
          ChatMedia(
            url: file.path,
            fileName: "",
            type: MediaType.image,
          )
        ],
      );
      _sendMessage(chatMessage);
    }
  }
}
