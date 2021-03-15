import 'dart:async';

import 'package:backoffice/screens/login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 2000), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => LoginScreen(),
      ));
    });
    // getCurrentUser();
    // if(getCurrentUser() == null){
    //   Timer(Duration(milliseconds: 2000), () {
    //     Navigator.of(context).pushReplacement(MaterialPageRoute(
    //       builder: (context) => LoginScreen(),
    //     ));
    //   });
    // } else {
    //   Timer(Duration(milliseconds: 2000), () {
    //     Navigator.of(context).pushReplacement(MaterialPageRoute(
    //       builder: (context) => HomeScreen(),
    //     ));
    //   });
    // }
    // Timer(Duration(milliseconds: 2000), () {
    //
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          'Backoffice',
          style: TextStyle(
              fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }

  // Future<User> getCurrentUser() async{
  //   User _user = await FirebaseAuth.instance.currentUser;
  //   //print('User: ${_user.email ?? "User = None"}');
  //   //print('Name: ${_user.displayName ?? "Name = None"}');
  //   print('User is = $_user');
  //   if(_user == null){
  //     Timer(Duration(milliseconds: 2000), () {
  //       Navigator.of(context).pushReplacement(MaterialPageRoute(
  //         builder: (context) => HistoryScreen(),
  //       ));
  //     });
  //   } else {
  //     Timer(Duration(milliseconds: 2000), () {
  //       Navigator.of(context).pushReplacement(MaterialPageRoute(
  //         builder: (context) => PromotionsScreen(),
  //       ));
  //     });
  //   }

  //   return _user;
  // }
}
