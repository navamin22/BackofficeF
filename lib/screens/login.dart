import 'dart:convert';

import 'package:backoffice/screens/Admin/admintwo.dart';
import 'package:backoffice/screens/logintomeun.dart';
import 'package:backoffice/widgets/CustomImage.dart';
import 'package:backoffice/widgets/custom_alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isHidden = true;
  bool signin = true;

  TextEditingController namectrl, emailctrl, passctrl, addminId, addminpass;

  @override
  void initState() {
    super.initState();
    namectrl = new TextEditingController();
    emailctrl = new TextEditingController();
    passctrl = new TextEditingController();
  }

  void adminState() {
    super.initState();
    addminId = new TextEditingController();
    addminpass = new TextEditingController();
  }

  Future login() async {
    var url = "http://192.168.1.103/LoginBackoffice/login.php";
    var response = await http.post(url, body: {
      "email": emailctrl.text,
      "password": passctrl.text,
    });
    var data = json.decode(response.body);
    if (data == "Success") {
      Fluttertoast.showToast(
          msg: "Login Successful",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LogintoMeunScreen()));
    }else{
      Fluttertoast.showToast(
          msg: "ID & Password Incorrect!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  Future register() async {
    var url = "http://192.168.1.103/LoginBackoffice/register.php";
    var response = await http.post(url, body: {
      "email": emailctrl.text,
      "password": passctrl.text,
    });

    var data = json.decode(response.body);
    if (data == "Error") {
      Fluttertoast.showToast(
          msg: "This User Already Exit!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    } else {
      Fluttertoast.showToast(
          msg: "Registration Successful",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              // AppBackground(),
              Container(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(10.0),
                  // physics: AlwaysScrollableScrollPhysics(),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 70.0,
                        ),
                        CustomImage(
                          width: 130.0,
                          height: 200.0,
                          margin: 0,
                          image_path: 'assets/logos/demo.png',
                        ),
                        boxUi(),
                        SizedBox(
                          height: 30.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        onPressed: () {
          _dialogsignInAdmin();
        },
        label: Text(
          'AdMin',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        icon: Icon(Icons.lock),
        backgroundColor: Colors.blue,
      ),
    );
  }

  void changeState() {
    if (signin) {
      setState(() {
        signin = false;
      });
    } else
      setState(() {
        signin = true;
      });
  }

  Widget boxUi() {
    return Card(
      elevation: 15.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // ignore: deprecated_member_use
                FlatButton(
                  // onPressed: () => changeState(),
                  onPressed: () {},
                  child: Text(
                    'SIGN IN',
                    style: GoogleFonts.varelaRound(
                        color: signin == true ? Colors.blue : Colors.grey,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                //--ปุ่มเปิดไว้ sign up
                // ignore: deprecated_member_use
                // FlatButton(
                //   onPressed: () => changeState(),
                //   child: Text(
                //     'SIGN UP',
                //     style: GoogleFonts.varelaRound(
                //         color: signin != true ? Colors.blue : Colors.grey,
                //         fontSize: 25.0,
                //         fontWeight: FontWeight.bold),
                //   ),
                // ),
              ],
            ),
            signin == true ? signInUi() : signUpUi(),
          ],
        ),
      ),
    );
  }

  Widget signInUi() {
    return Column(
      children: <Widget>[
        TextField(
          controller: emailctrl,
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.person_pin,
              ),
              hintText: 'ID'),
        ),
        TextField(
          obscureText: _isHidden,
          controller: passctrl,
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.lock,
              ),
              hintText: 'password'),
        ),
        SizedBox(height: 10.0),
        MaterialButton(
          onPressed: () {
            // Navigator.of(context).push(
            //     MaterialPageRoute(builder: (context) => LogintoMeunScreen()));
            login();
          },
          child: Text(
            'Sign In',
            style: GoogleFonts.varelaRound(
              fontSize: 20.0,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget signUpUi() {
    return Column(
      children: <Widget>[
        // TextField(
        //   controller: namectrl,
        //   decoration: InputDecoration(
        //       prefixIcon: Icon(
        //         Icons.account_box,
        //       ),
        //       hintText: 'name'),
        // ),
        TextField(
          controller: emailctrl,
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.email,
              ),
              hintText: 'email'),
        ),
        TextField(
          obscureText: _isHidden,
          controller: passctrl,
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.lock,
              ),
              hintText: 'pass'),
        ),
        SizedBox(height: 10.0),
        MaterialButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => LogintoMeunScreen()));
            register();
          },
          child: Text(
            'Sign Up',
            style: GoogleFonts.varelaRound(
              fontSize: 18.0,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _dialogsignInAdmin() {
    return showDialog(
        context: context,
        // ignore: non_constant_identifier_names
        builder: (BuildContext) {
          return CustomAlertDialog(
            content: Container(
              width: MediaQuery.of(context).size.width / 1.2,
              height: MediaQuery.of(context).size.height / 3.0,
              color: Colors.transparent,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 10.0),
                    Text(
                      'AdMin',
                      style: GoogleFonts.varelaRound(
                        fontSize: 34.0,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 25.0),
                    TextField(
                      controller: addminId,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person_pin,
                          ),
                          hintText: 'ID'),
                    ),
                    TextField(
                      obscureText: _isHidden,
                      controller: addminpass,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                          ),
                          hintText: 'password'),
                    ),
                    SizedBox(height: 20.0),
                    // ignore: deprecated_member_use
                    RaisedButton(
                      elevation: 5.0,
                      onPressed: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => AdminTwoScreen(),
                        //   ),
                        // );
                        login();
                      },
                      padding: EdgeInsets.all(12.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        // side: BorderSide(color: Colors.grey, width: 3)
                      ),
                      color: Colors.blue,
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 1.5,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OpenSans',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  // void _addstock() {
  //   Navigator.of(context)
  //       .push(MaterialPageRoute(builder: (context) => AddstockPage()));
  // }
}
