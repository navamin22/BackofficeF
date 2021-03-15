import 'package:backoffice/screens/home.dart';
import 'package:backoffice/screens/login.dart';
import 'package:backoffice/widgets/CustomImage.dart';
import 'package:backoffice/widgets/custom_alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';

class LogintoMeunScreen extends StatefulWidget {
  @override
  _LogintoMeunScreenState createState() => _LogintoMeunScreenState();
}

class _LogintoMeunScreenState extends State<LogintoMeunScreen> {
  void _dialogBrand() {
    showDialog(
        context: context,
        // ignore: non_constant_identifier_names
        builder: (BuildContext) {
          final mq = MediaQuery.of(context);
          TextEditingController _emailControllerField = TextEditingController();

          return CustomAlertDialog(
            content: Container(
              width: MediaQuery.of(context).size.width / 1.2,
              height: MediaQuery.of(context).size.height / 3.0,
              color: Colors.transparent,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 15),
                  Text(
                    'ชื่อ Brand',
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  ),
                  SizedBox(height: 15.0),
                  TextField(
                    controller: _emailControllerField,
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      hintText: 'กรุณาของ Brand ของเครื่อง',
                      labelText: 'Brand',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                      ),
                      hintStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: EdgeInsets.all(25),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.blue,
                      child: MaterialButton(
                        minWidth: mq.size.width / 2,
                        padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                        child: Text(
                          'Confirm',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        drawer: MultiLevelDrawer(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.blue,
                  Colors.white,
                ]),
            divisionColor: Colors.white,
            rippleColor: Colors.orangeAccent,
            subMenuBackgroundColor: Colors.white,
            header: Container(
              height: size.height * 0.25,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CustomImage(
                      width: 100,
                      height: 100,
                      margin: 0,
                      image_path: 'assets/logos/demo.png',
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Modern Pos',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            children: [
              // เมนูเพิ่มแถบขวา
              // MLMenuItem(
              //   leading: Icon(Icons.backup_rounded),
              //   // trailing: Icon(Icons.arrow_right),
              //   subMenuItems: [
              //     // MLSubmenu(
              //     //   submenuContent: Text('เมนูแรก'),
              //     //   onClick: () => print('เมนูแรก'),
              //     // ),
              //     // MLSubmenu(
              //     //   submenuContent: Text('เมนูสอง'),
              //     //   onClick: () => print('เมนูสอง'),
              //     // ),
              //   ],
              //   content: Text(
              //     'Borrow',
              //     style: TextStyle(
              //       fontSize: 16,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              //   onClick: () => print('click'),
              // ),
              // MLMenuItem(
              //   leading: Icon(Icons.keyboard_return_outlined),
              //   // trailing: Icon(Icons.arrow_right),
              //   subMenuItems: [
              //     // MLSubmenu(
              //     //   submenuContent: Text('เมนูแรก'),
              //     //   onClick: () => print('เมนูแรก'),
              //     // ),
              //     // MLSubmenu(
              //     //   submenuContent: Text('เมนูสอง'),
              //     //   onClick: () => print('เมนูสอง'),
              //     // ),
              //   ],
              //   content: Text(
              //     'Return',
              //     style: TextStyle(
              //       fontSize: 16,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              //   onClick: () {},
              // ),
              // MLMenuItem(
              //   leading: Icon(Icons.store_mall_directory_outlined),
              //   // trailing: Icon(Icons.arrow_right),
              //   subMenuItems: [
              //     // MLSubmenu(
              //     //   submenuContent: Text('เมนูแรก'),
              //     //   onClick: () => print('เมนูแรก'),
              //     // ),
              //     // MLSubmenu(
              //     //   submenuContent: Text('เมนูสอง'),
              //     //   onClick: () => print('เมนูสอง'),
              //     // ),
              //   ],
              //   content: Text(
              //     'SellStuff',
              //     style: TextStyle(
              //       fontSize: 16,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              //   onClick: () {},
              // ),
              MLMenuItem(
                onClick: () => print('click'),
                leading: Icon(Icons.person),
                // trailing: Icon(Icons.arrow_right),
                // subMenuItems: [
                  // MLSubmenu(
                  //   submenuContent: Text('เมนูแรก'),
                  //   onClick: () => print('เมนูแรก'),
                  // ),
                  // MLSubmenu(
                  //   submenuContent: Text('เมนูสอง'),
                  //   onClick: () => print('เมนูสอง'),
                  // ),
                // ],
                content: Text(
                  'Me',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // MLMenuItem(
              //   leading: Icon(Icons.add_circle_outline),
              //   trailing: Icon(Icons.arrow_right),
              //   subMenuItems: [
              //     MLSubmenu(
              //       submenuContent: Text(
              //         'Brand(ยี่ห้อเครื่อง)',
              //         style: TextStyle(
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //       onClick: () {
              //         _dialogBrand();
              //       },
              //     ),
              //     MLSubmenu(
              //       submenuContent: Text(
              //         'ModelBrand(รุ่นเครื่อง)',
              //         style: TextStyle(fontWeight: FontWeight.bold),
              //       ),
              //       onClick: () {
              //         _dialogModelBrand();
              //       },
              //     ),
              //   ],
              //   content: Text(
              //     'AddStock',
              //     style: TextStyle(
              //       fontSize: 16,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              //   onClick: () {},
              // ),
              MLMenuItem(
                  leading: Icon(Icons.lock),
                  content: Text(
                    'Log Out',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onClick: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  }),
                  MLMenuItem(
                  leading: Icon(Icons.close_outlined),
                  content: Text(
                    'Close',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onClick: () {
                    Navigator.of(context).pop();
                  }),
            ]),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            'BackOffice',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Stack(
              children: <Widget>[
                Home(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
