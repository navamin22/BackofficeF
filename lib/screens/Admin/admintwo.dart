import 'package:backoffice/screens/Admin/borrowAdMin/commandborrow.dart';
import 'package:backoffice/screens/Admin/sellStuffAdmin/commandSell.dart';
import 'package:backoffice/screens/login.dart';
import 'package:backoffice/widgets/CustomImage.dart';
import 'package:backoffice/widgets/custom_alert_dialog.dart';
import 'package:backoffice/screens/Admin/homeAdmin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';

class AdminTwoScreen extends StatefulWidget {
  @override
  _AdminTwoScreenState createState() => _AdminTwoScreenState();
}

class _AdminTwoScreenState extends State<AdminTwoScreen> {
  //-ไว้เขียน ของ brand
  final _brand = TextEditingController();
  //-ไว้เขียน ของ model
  final _modelBrand = TextEditingController();
  //-ไว้เขียน ของ Stock
  final _brandStock = TextEditingController();
  final _modelBrandStock = TextEditingController();
  final _quantity = TextEditingController();
  final _quantityEnable = TextEditingController();
  //-ไว้เขียน ของ Machine
  final _machineBrand = TextEditingController();
  final _machineModel = TextEditingController();
  final _machineSerialnumber = TextEditingController();
  final _machineStatus = TextEditingController();
  // String barcode = 'กรุณากรอก Serialnumber เครื่อง';
  String _counter, _value = "";

  void _dialogBrand() {
    showDialog(
        context: context,
        // ignore: non_constant_identifier_names
        builder: (BuildContext) {
          final mq = MediaQuery.of(context);
          // ignore: non_constant_identifier_names

          return CustomAlertDialog(
            content: Container(
              width: MediaQuery.of(context).size.width / 1.2,
              height: MediaQuery.of(context).size.height / 3.0,
              color: Colors.transparent,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 15),
                    Text(
                      'Brand',
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                    SizedBox(height: 15.0),
                    TextField(
                      controller: _brand,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        hintText: 'กรุณากรอก Brand ของเครื่อง',
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
            ),
          );
        });
  }

  void _dialogModelBrand() {
    showDialog(
        context: context,
        // ignore: non_constant_identifier_names
        builder: (BuildContext) {
          final mq = MediaQuery.of(context);
          // TextEditingController _modelBrand = TextEditingController();

          return CustomAlertDialog(
            content: Container(
              width: MediaQuery.of(context).size.width / 1.2,
              height: MediaQuery.of(context).size.height / 3.0,
              color: Colors.transparent,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 15),
                    Text(
                      'ModelBrand',
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                    SizedBox(height: 15.0),
                    TextField(
                      controller: _modelBrand,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        hintText: 'กรุณากรอก ModelBrand ของเครื่อง',
                        labelText: 'ModelBrand',
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
            ),
          );
        });
  }

  void _dialogStock() {
    showDialog(
        context: context,
        // ignore: non_constant_identifier_names
        builder: (BuildContext) {
          final mq = MediaQuery.of(context);
          return CustomAlertDialog(
            content: Container(
              width: MediaQuery.of(context).size.width / 1.2,
              height: MediaQuery.of(context).size.height / 2.0,
              color: Colors.transparent,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    // SizedBox(height: 10),
                    Text(
                      'Stock',
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                    // SizedBox(height: 10.0),
                    TextField(
                      controller: _brandStock,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        hintText: 'กรุณากรอกชื่อ Brand',
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
                    TextField(
                      controller: _modelBrandStock,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        hintText: 'กรุณากรอกชื่อ Model',
                        labelText: 'Model',
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: _quantity,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        hintText: 'กรุณากรอกจำนวนเครื่องทั้งหมดในคลังสินค้า',
                        labelText: 'จำนวนเครื่องทั้งหมดในคลังสินค้า',
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                    TextFormField(
                      controller: _quantityEnable,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        hintText: 'กรุณากรอกจำนวนเครื่องที่สามารถใช้งานได้',
                        labelText: 'จำนวนเครื่องที่ใช้งานได้',
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.blue,
                        child: MaterialButton(
                          minWidth: mq.size.width / 2,
                          padding: EdgeInsets.fromLTRB(2.0, 2.0, 2.0, 2.0),
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
            ),
          );
        });
  }

  void _dialogMachine() {
    showDialog(
        context: context,
        // ignore: non_constant_identifier_names
        builder: (BuildContext) {
          final mq = MediaQuery.of(context);
          return CustomAlertDialog(
            content: Container(
              width: MediaQuery.of(context).size.width / 1.2,
              height: MediaQuery.of(context).size.height / 2.0,
              color: Colors.transparent,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    // SizedBox(height: 5),
                    Text(
                      'Machine',
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                    // SizedBox(height: 5.0),
                    TextField(
                      controller: _machineBrand,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        hintText: 'กรุณากรอกชื่อ Brand',
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
                    TextField(
                      controller: _machineModel,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        hintText: 'กรุณากรอกชื่อ Model',
                        labelText: 'Model',
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    TextField(
                      controller: _machineSerialnumber,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        //hintText: '$_value',
                        labelText: 'Serialnumber',
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            _barcodeScanner();
                          },
                          icon: Icon(
                            Icons.qr_code_scanner_outlined,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    TextField(
                      controller: _machineStatus,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        hintText: 'กรอกสถานะเครื่อง(Borrow ใช้ได้)',
                        labelText: 'Status',
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
                      height: 10.0,
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.blue,
                        child: MaterialButton(
                          minWidth: mq.size.width / 2,
                          padding: EdgeInsets.fromLTRB(1.0, 1.0, 1.0, 1.0),
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
          rippleColor: Colors.orange,
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
            MLMenuItem(
                leading: Icon(Icons.backup_outlined),
                content: Text(
                  'ยืม',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onClick: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CommandBorrow()),
                  );
                  // Navigator.of(context).pop();
                  // Navigator.of(context).pushNamed('/a');
                }),
            // MLMenuItem(
            //   leading: Icon(Icons.keyboard_return_outlined),
            //   content: Text(
            //     'คืน',
            //     style: TextStyle(
            //       fontSize: 16,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            //   onClick: () {},
            // ),
            MLMenuItem(
              leading: Icon(Icons.store_mall_directory_outlined),
              content: Text(
                'ขาย',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onClick: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CommandSell()),
                );
              },
            ),
            MLMenuItem(
              leading: Icon(Icons.add_circle_outline),
              trailing: Icon(Icons.arrow_right),
              subMenuItems: [
                MLSubmenu(
                  submenuContent: Text(
                    'Brand(ยี่ห้อเครื่อง)',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onClick: () {
                    _dialogBrand();
                  },
                ),
                MLSubmenu(
                  submenuContent: Text(
                    'ModelBrand(รุ่นเครื่อง)',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onClick: () {
                    _dialogModelBrand();
                  },
                ),
                MLSubmenu(
                  submenuContent: Text(
                    'Stock (ของในคลัง)',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onClick: () {
                    _dialogStock();
                  },
                ),
                MLSubmenu(
                  submenuContent: Text(
                    'Machine (ต้องกรอก stock)',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onClick: () {
                    _dialogMachine();
                  },
                ),
              ],
              content: Text(
                'AddStock',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onClick: () {},
            ),
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
          ],
        ),
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
                HomeAdmin(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future _barcodeScanner() async {
    _counter = await FlutterBarcodeScanner.scanBarcode(
        "#ff6666", "Cancel", true, ScanMode.BARCODE);

    setState(() {
      _value = _counter;
      _machineSerialnumber.text = '$_value';
    });
  }

  // Future<void> barcodescan() async {
  //   try {
  //     barcode = await FlutterBarcodeScanner.scanBarcode(
  //       "#ff6666", "cancel", true, ScanMode.BARCODE,);
  //       if (!mounted) return;
  //       setState(() {
  //         this.barcode = barcode;
  //       });
  //   } on PlatformException {
  //     barcode = "Error to failed on your mobile device";
  //   }
  // }
}
