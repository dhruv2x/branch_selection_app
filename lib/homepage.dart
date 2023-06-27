import 'package:flutter/material.dart';
import 'AssessmentSection.dart';
import 'readsection.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Branch Selection App'),
      ),
      body: HomeSection(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AssessmentSection()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ReadSection()),
            );
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment),
            label: 'Assessment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Explore',
          ),
        ],
      ),
    );
  }
}

class HomeSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Expanded(
              child: Image.asset(
                'assets/images/branch-selection-app-logo.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 24.0),
          Text(
            'Welcome to the Career Guidance App!',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16.0),
          Text(
            'Discover Your Ideal Career Path',
            style: TextStyle(
              fontSize: 18.0,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 24.0),
          Text(
            'This application is designed to assist students in making informed decisions about their career choices using AI-based algorithms.',
            style: TextStyle(
              fontSize: 16.0,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 24.0),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AssessmentSection()),
              );
            },
            child: Text(
              'Get Started',
              style: TextStyle(
                color: const Color.fromARGB(255, 76, 76, 76),
              ),
            ),
          ),
        ],
      ),
    );
  }
}




