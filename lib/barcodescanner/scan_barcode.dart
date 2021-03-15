import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ShowBarcode extends StatefulWidget {
  @override
  _ShowBarcodeState createState() => _ShowBarcodeState();
}

class _ShowBarcodeState extends State<ShowBarcode> {
  String barcode = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scen Barcode'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Scan the result',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              '$barcode',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            RaisedButton(
              color: Colors.red,
              child: Text('Scan Barcode'),
              textColor: Colors.white,
              onPressed: () {
                barcodescan();
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> barcodescan() async {
    try {
      final barcode = await FlutterBarcodeScanner.scanBarcode(
        "#ff6666", "cancel", true, ScanMode.BARCODE,);
        if (!mounted) return;
        setState(() {
          this.barcode = barcode;
        });
    } on PlatformException {
      barcode = "Error to failed on your mobile device";
    }
  }
}
