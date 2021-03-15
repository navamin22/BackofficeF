import 'package:backoffice/models/modelnumber.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OtherBtn extends StatefulWidget {
  @override
  _OtherBtnState createState() => _OtherBtnState();
}

class _OtherBtnState extends State<OtherBtn> {
  Widget bodyData() => DataTable(
      onSelectAll: (b) {},
      sortColumnIndex: 0,
      sortAscending: true,
      columns: <DataColumn>[
        DataColumn(
          label: Text(
            'Model',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          numeric: false,
          onSort: (i, b) {
            print('$i $b');
            setState(() {
              name.sort((a, b) => a.model.compareTo(b.model));
            });
          },
          tooltip: 'Model ของเครื่อง',
        ),
        DataColumn(
          label: Text(
            'ยอดคงเหลือ',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          numeric: false,
          onSort: (i, b) {
            print('$i $b');
            setState(() {
              name.sort((a, b) => a.number.compareTo(b.number));
            });
          },
          tooltip: 'ยอดคงเหลือของแต่ละ Model',
        ),
      ],
      rows: name
          .map(
            (name) => DataRow(
              //-ไว้เพิ่มกล่องสีเหลี่ยมหน้าข้อความ
              // onSelectChanged: (b) {},
              selected: true,
              cells: [
                DataCell(
                  Text(
                    name.model,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  showEditIcon: false,
                  placeholder: false,
                ),
                DataCell(
                  Text(
                    name.number,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  showEditIcon: false,
                  placeholder: false,
                ),
              ],
            ),
          )
          .toList());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.black,
        title: Text("BackOffice"),
      ),
      body: Center(
        // value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                      // horizontal: ,
                      // vertical: 50.0,
                      ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 20),
                      Text(
                        'OTHER',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      bodyData(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}