import 'package:flutter/material.dart';

import 'homepage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 80.0),
              CircleAvatar(
                radius: 64.0,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.lock,
                  color: Colors.white,
                  size: 48.0,
                ),
              ),
              SizedBox(height: 48.0),
              Text(
                'Let AI navigate your career',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 48.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 12.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                ),
                obscureText: true,
              ),
              SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () {
                   Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));

                },
               
                child: Text('Login', style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),),
              ),
              SizedBox(height: 12.0),
              ElevatedButton(
                onPressed: () {
                   Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));

                },
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 24.0),
              Text(
                'Don\'t have an account?',
                style: TextStyle(fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));

                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
