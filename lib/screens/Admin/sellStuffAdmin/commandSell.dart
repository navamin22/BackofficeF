import 'package:backoffice/screens/Admin/admintwo.dart';
import 'package:backoffice/widgets/constants.dart';
import 'package:backoffice/widgets/custom_alert_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class CommandSell extends StatefulWidget {
  @override
  _CommandSellState createState() => _CommandSellState();
}

class _CommandSellState extends State<CommandSell> {
  final _machineSerialnumber = TextEditingController();

  String _counter, _value = "";

  Widget _numberDocument() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'เลขที่เอกสาร',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.account_balance_wallet_outlined,
                color: Colors.white,
              ),
              hintText: 'เลขที่เอกสาร',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _nameBrand() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'ยี่ห้อ',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.fiber_manual_record_outlined,
                color: Colors.white,
              ),
              hintText: 'ยี่ห้อ',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _nameModel() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'รุ่นเครื่องง',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.fiber_manual_record_outlined,
                color: Colors.white,
              ),
              hintText: 'รุ่นเครื่อง',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _serialnumber() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Serialnumber',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            controller: _machineSerialnumber,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.format_list_numbered_outlined,
                color: Colors.white,
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  _barcodeScanner();
                },
                icon: Icon(
                  Icons.qr_code_scanner_outlined,
                  color: Colors.white,
                ),
              ),
              hintText: 'Serialnumber',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _nameSales() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'ชื่อผู้ขาย',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.emoji_people_outlined,
                color: Colors.white,
              ),
              hintText: 'ชื่อผู้ขาย',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _nameGuest() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'ชื่อลูกค้า',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.people_outline,
                color: Colors.white,
              ),
              hintText: 'ชื่อลูกค้า',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _contactPhoneNumber() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'เบอร์โทรลูกค้า',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.phone_callback_outlined,
                color: Colors.white,
              ),
              hintText: 'เบอร์โทรลูกค้า',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  // Widget _dayBorrow() {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: <Widget>[
  //       Text(
  //         'วันที่ยืม',
  //         style: TextStyle(
  //           color: Colors.black,
  //           fontWeight: FontWeight.bold,
  //           fontSize: 16.0,
  //         ),
  //       ),
  //       SizedBox(height: 10.0),
  //       Container(
  //         alignment: Alignment.centerLeft,
  //         decoration: kBoxDecorationStyle,
  //         height: 60.0,
  //         child: TextField(
  //           keyboardType: TextInputType.datetime,
  //           style: TextStyle(
  //             color: Colors.white,
  //             fontFamily: 'OpenSans',
  //           ),
  //           decoration: InputDecoration(
  //             border: InputBorder.none,
  //             contentPadding: EdgeInsets.only(top: 14.0),
  //             prefixIcon: Icon(
  //               Icons.date_range_outlined,
  //               color: Colors.white,
  //             ),
  //             hintText: 'วันที่ยืม',
  //             hintStyle: kHintTextStyle,
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }

  Widget _note() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'หมายเหตุ',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.note_add_outlined,
                color: Colors.white,
              ),
              hintText: 'หมายเหตุ',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _btnSubmid() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      // width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
          _dialogSubmid();
          // print('ยืนยัน');
          // Navigator.of(context)
          //     .push(MaterialPageRoute(builder: (context) => AdminTwoScreen()));
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        color: Colors.blue,
        child: Text(
          'ยืนยัน',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  Widget approveInDialog() {
    // ignore: deprecated_member_use
    return RaisedButton(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: EdgeInsets.all(10),
      child: Text(
        'อนุมัติ',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      color: Colors.blue,
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => AdminTwoScreen()));
      },
    );
  }

  Widget cancelInDialog() {
    // ignore: deprecated_member_use
    return RaisedButton(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: EdgeInsets.all(10),
      child: Text(
        'ยกเลิก',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      color: Colors.blue,
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }

  Widget showButtonDialogSubmid() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        approveInDialog(),
        SizedBox(width: 30),
        cancelInDialog(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.black,
        title: Text("ขาย"),
      ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 20.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _numberDocument(),
                      SizedBox(height: 5),
                      _nameBrand(),
                      SizedBox(height: 5),
                      _nameModel(),
                      SizedBox(height: 5),
                      _serialnumber(),
                      SizedBox(height: 5),
                      _nameSales(),
                      SizedBox(height: 5),
                      _nameGuest(),
                      SizedBox(height: 5),
                      _contactPhoneNumber(),
                      SizedBox(height: 5),
                      // _dayBorrow(),
                      SizedBox(height: 5),
                      _note(),
                      SizedBox(height: 5),
                      _btnSubmid(),
                    ],
                  ),
                ),
              )
            ],
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

  void _dialogSubmid() {
    showDialog(
      context: context,
      // ignore: non_constant_identifier_names
      builder: (BuildContext) {
        final mq = MediaQuery.of(context);
        return CustomAlertDialog(
          content: Container(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            width: MediaQuery.of(context).size.width / 5.0,
            height: MediaQuery.of(context).size.height / 5.0,
            color: Colors.transparent,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  // SizedBox(height: 20.0),
                  Text(
                    'ต้องการยืนยัน ?',
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  ),
                  SizedBox(height: 20.0),
                  showButtonDialogSubmid(),
                  // Expanded(
                  //   child: SingleChildScrollView(
                  //     child: Padding(
                  //       padding: EdgeInsets.all(25),
                  //       child: Material(
                  //         elevation: 5.0,
                  //         borderRadius: BorderRadius.circular(15.0),
                  //         color: Colors.blue,
                  //         child: MaterialButton(
                  //           minWidth: mq.size.width / 2,
                  //           padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                  //           child: Text(
                  //             'Confirm',
                  //             textAlign: TextAlign.center,
                  //             style: TextStyle(
                  //               fontSize: 20.0,
                  //               color: Colors.white,
                  //               fontWeight: FontWeight.bold,
                  //             ),
                  //           ),
                  //           onPressed: () {
                  //             Navigator.of(context).pop();
                  //           },
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
