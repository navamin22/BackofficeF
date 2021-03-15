import 'dart:ffi';

import 'package:backoffice/screens/Admin/admintwo.dart';
import 'package:backoffice/widgets/constants.dart';
import 'package:backoffice/widgets/custom_alert_dialog.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class CommandBorrow extends StatefulWidget {
  @override
  _CommandBorrowState createState() => _CommandBorrowState();
}

class _CommandBorrowState extends State<CommandBorrow> {
  final _daytext = TextEditingController();

  String _counter = "";

  // ignore: missing_return
  Future<Void> _openDatePicker(BuildContext context) async {
    final DateTime d = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: new DateTime(DateTime.now().year - 3),
        lastDate: new DateTime(DateTime.now().year + 3));

    if (d != null) {
      setState(() {
        _counter = DateFormat.yMMMd("en_US").format(d).toString();
        // _daytext.t
        _daytext.text = '$_counter';
      });
    }
  }

  Widget _namepeopleBorrow() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'ชื่อผู้ยืม',
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
            maxLines: 5,
            keyboardType: TextInputType.emailAddress,
            // textInputAction: TextInputAction.go,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.person_pin_outlined,
                color: Colors.white,
              ),
              hintText: 'ชื่อผู้ยืม',
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
          'รุ่นเครื่อง',
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

  Widget _numberModel() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'จำนวน',
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
            keyboardType: TextInputType.number,
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
              hintText: 'จำนวน',
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
          'ลูกค้า',
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
                Icons.people_sharp,
                color: Colors.white,
              ),
              hintText: 'ลูกค้า',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _location() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'location',
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
                Icons.location_on_outlined,
                color: Colors.white,
              ),
              hintText: 'location',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _contactName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Contact',
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
              hintText: 'ชื่อ',
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
          'Contact',
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
            keyboardType: TextInputType.phone,
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
              hintText: 'เบอร์โทร',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _dayBorrow() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: [
            Text(
              'วันที่ยืม',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            IconButton(
              icon: Icon(Icons.error_outline),
              onPressed: () {
                _dialogDay();
              },
            ),
          ],
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            readOnly: true,
            controller: _daytext,
            keyboardType: TextInputType.datetime,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.domain_verification_sharp,
                color: Colors.white,
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  _openDatePicker(context);
                },
                icon: Icon(
                  Icons.date_range_outlined,
                  color: Colors.white,
                ),
              ),
              // hintText: _selectedDate,
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

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
      // ignore: deprecated_member_use
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
          borderRadius: BorderRadius.circular(15.0),
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

  Widget approve() {
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

  Widget cancel() {
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

  Widget showButton() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        approve(),
        SizedBox(width: 30),
        cancel(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.black,
        title: Text("ยืม"),
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
                      _namepeopleBorrow(),
                      SizedBox(height: 5),
                      _nameModel(),
                      SizedBox(height: 5),
                      _numberModel(),
                      SizedBox(height: 5),
                      _nameGuest(),
                      SizedBox(height: 5),
                      _location(),
                      SizedBox(height: 5),
                      _contactName(),
                      SizedBox(height: 5),
                      _contactPhoneNumber(),
                      SizedBox(height: 5),
                      _dayBorrow(),
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
                  showButton(),
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

  void _dialogDay() {
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
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    // SizedBox(height: 20.0),
                    Text(
                      'หากคุณต้องการเลือกข้อมูลวันที่ยืม',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'คุณสามารถกดผ่านปุ่ม Icon ได้ผ่านปุ่มนี้',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Icon(
                      Icons.date_range_outlined,
                      size: 40,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
