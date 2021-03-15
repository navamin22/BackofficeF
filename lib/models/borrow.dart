import 'package:flutter/cupertino.dart';

class Borrow {
  final String id;
  final String brand;
  final String model;
  final String borrowName;
  final String serialnumber;
  final String dateBorrow;
  final String dateReturn;
  final String objective;
  final String machineId;
  final String status;

  const Borrow({
    @required this.id,
    @required this.brand,
    @required this.model,
    @required this.borrowName,
    @required this.serialnumber,
    @required this.dateBorrow,
    @required this.dateReturn,
    @required this.objective,
    @required this.machineId,
    @required this.status, 
  });
}