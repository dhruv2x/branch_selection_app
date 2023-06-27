import 'dart:async';
import 'package:flutter/material.dart';
import 'package:branch_selection_app/login_page.dart';
//Screen1 is splash screen
class screen1 extends StatefulWidget {
  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds:3), () {
      //after 2 seconds screen2 will apperar
      //use push replacement instead of push
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
     },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(    
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
        },
        child: Container(
          width: double.infinity, // Make the container occupy the full width of the screen
          height: double.infinity, // Make the container occupy the full height of the screen
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/branch-selection-app-logo.png'),
              fit: BoxFit.cover, // Set the fit property to cover the container
            ),
          ),
        ),
      ),
    );
  }
}
