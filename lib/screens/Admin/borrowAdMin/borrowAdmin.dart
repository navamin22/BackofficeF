import 'package:backoffice/widgets/custom_alert_dialog.dart';
import 'package:flutter/material.dart';

class BorrowAdminPage extends StatefulWidget {
  BorrowAdminPage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _BorrowAdminPageState createState() => _BorrowAdminPageState();
}

class _BorrowAdminPageState extends State<BorrowAdminPage> {
  final List<String> items =
      List<String>.generate(15, (index) => 'Item: ${++index}');

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
                      _dialogDay();
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

  void _dialogDay() {
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
                  children: <Widget>[

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
