import 'package:backoffice/screens/Admin/btnStock/btnCounterPlus.dart';
import 'package:backoffice/screens/Admin/btnStock/btnEbanking.dart';
import 'package:backoffice/screens/Admin/btnStock/btnOther.dart';
import 'package:backoffice/screens/Admin/btnStock/btnSuzohapp.dart';
import 'package:backoffice/screens/Admin/btnStock/btnTelpo.dart';
import 'package:backoffice/screens/Admin/btnStock/btnVNE.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StockOfPage extends StatefulWidget {
  @override
  _StockOfPageState createState() => _StockOfPageState();
}

class _StockOfPageState extends State<StockOfPage> {
  Widget _eBankingTech() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 10.0,
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => EbankingBtn()));
        },
        padding: EdgeInsets.all(15.0),
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.blue,
        child: Text(
          'E-Banking Tech',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  Widget _counterPlus() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 10.0,
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => CounterPlusBtn()));
        },
        padding: EdgeInsets.all(15.0),
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.blue,
        child: Text(
          'Counter Plus',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  Widget _telpo() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 10.0,
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => TelpoBtn()));
        },
        padding: EdgeInsets.all(15.0),
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.blue,
        child: Text(
          'Telpo',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  Widget _suzohapp() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 10.0,
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => SuzohappBtn()));
        },
        padding: EdgeInsets.all(15.0),
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.blue,
        child: Text(
          'Suzohapp',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  Widget _vne() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 10.0,
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => VNEBtn()));
        },
        padding: EdgeInsets.all(15.0),
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.blue,
        child: Text(
          'VNE',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  Widget _other() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 10.0,
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => OtherBtn()));
        },
        padding: EdgeInsets.all(15.0),
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.blue,
        child: Text(
          'OTHER',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 22.0,
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
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  // physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 40.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 20),
                      _eBankingTech(),
                      // SizedBox(height: 20),
                      _counterPlus(),
                      _telpo(),
                      _suzohapp(),
                      _vne(),
                      _other(),
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
}
