import 'package:backoffice/widgets/constants.dart';
import 'package:backoffice/widgets/custom_alert_dialog.dart';
import 'package:flutter/material.dart';

class SellstuffAdminPage extends StatefulWidget {
  SellstuffAdminPage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _SellstuffAdminPageState createState() => _SellstuffAdminPageState();
}

class _SellstuffAdminPageState extends State<SellstuffAdminPage> {
  final List<String> items =
      List<String>.generate(15, (index) => 'Item: ${++index}');

  Widget _nameModel() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            readOnly: true,
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
                Icons.account_balance_wallet_rounded,
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
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            readOnly: true,
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
                Icons.format_list_numbered_rounded,
                color: Colors.white,
              ),
              hintText: 'Serialnumber',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _nameSell() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            readOnly: true,
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
              hintText: 'ชื่อผู้ขาย',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _namePeople() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            readOnly: true,
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
                Icons.people_alt_rounded,
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

  Widget _numberPeople() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            readOnly: true,
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

  Widget _btnCloes() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      // width: double.infinity,
      // ignore: deprecated_member_use
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
          Navigator.of(context).pop();
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
          'Cloes',
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Column(
              children: <Widget>[
                ListTile(
                  // leading: Icon(Icons.directions_bus),
                  title: Text('${items[index]}'),
                  subtitle: Text('Model'),
                  trailing: IconButton(
                    color: Colors.blue[600],
                    icon: Icon(Icons.all_inbox_rounded),
                    onPressed: () {
                      _dialogLook();
                    },
                  ),
                ),
                Divider(
                  height: 3,
                  color: Colors.black,
                )
              ],
            );
          }),
    );
  }

  void _dialogLook() {
    showDialog(
      context: context,
      // ignore: non_constant_identifier_names
      builder: (BuildContext) {
        final mq = MediaQuery.of(context);
        return CustomAlertDialog(
          content: Container(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height / 1.5,
            color: Colors.transparent,
            child: SingleChildScrollView(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    _nameModel(),
                    SizedBox(height: 15.0),
                    _serialnumber(),
                    SizedBox(height: 15.0),
                    _nameSell(),
                    SizedBox(height: 15.0),
                    _namePeople(),
                    SizedBox(height: 15.0),
                    _numberPeople(),
                    SizedBox(height: 15.0),
                    _btnCloes(),
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
