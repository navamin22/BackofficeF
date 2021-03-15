import 'package:flutter/cupertino.dart';

class Machine {
  final String id;
  final String brand;
  final String model;
  final String serialnumber;
  final String status;
  final String stockId;

  const Machine({
    @required this.id,
    @required this.brand,
    @required this.model,
    @required this.serialnumber,
    @required this.status,
    @required this.stockId, 
  });
}