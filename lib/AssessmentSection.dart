import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class AssessmentSection extends StatefulWidget {
  @override
  _ChatGPTPageState createState() => _ChatGPTPageState();
}

class _ChatGPTPageState extends State<AssessmentSection> {
  final TextEditingController apikeyController = TextEditingController();
  final TextEditingController current = TextEditingController();
  final TextEditingController interest = TextEditingController();
  final TextEditingController environment = TextEditingController();
  final TextEditingController skills = TextEditingController();

  String _response = '';
  String apiKey = '';

  Future<String> sendMessageToChatGpt(String message) async {
    // Replace 'YOUR_API_KEY' with your actual ChatGPT API key
    Uri uri = Uri.parse("https://api.openai.com/v1/chat/completions");

    Map<String, dynamic> body = {
      "model": "gpt-3.5-turbo",
      "messages": [
        {"role": "system", "content": "You are a user."},
        {"role": "user", "content": message}
      ],
      "max_tokens": 500,
    };

    final response = await http.post(
      uri,
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $apiKey",
      },
      body: json.encode(body),
    );

    print(response.body);

    Map<String, dynamic> parsedResponse = json.decode(response.body);

    String reply = parsedResponse['choices'][0]['message']['content'];
    return reply;
  }

  void onSendMessage() {
    setState(() {
      apiKey = apikeyController.text.trim();
    });

    String message =
        "You are my career guide. I would like you to suggest the best career branch for me based on below parameters.\n" +
        "Current Education: ${current.text.trim()}\n" +
        "Interest: ${interest.text.trim()}\n" +
        "Skills: ${skills.text.trim()}\n" +
        "Work Environment: ${environment.text.trim()}";

    interest.clear();
    skills.clear();
    environment.clear();
    current.clear();

    sendMessageToChatGpt(message).then((response) {
      setState(() {
        _response = response;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Let AI navigate your career'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: apikeyController,
              decoration: InputDecoration(
                labelText: 'API Key',
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: current,
              decoration: InputDecoration(
                labelText: 'Enter Your Current Education',
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            TextField(
              controller: interest,
              decoration: InputDecoration(
                labelText: 'Enter your Interest/Hobbies',
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            TextField(
              controller: environment,
              decoration: InputDecoration(
                labelText: 'Enter your work preference',
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            TextField(
              controller: skills,
              decoration: InputDecoration(
                labelText: 'Event your skills',
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: onSendMessage,
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
              ),
              child: Text(
                'Suggest Best Career',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              _response,
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
