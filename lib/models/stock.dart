import 'package:flutter/cupertino.dart';

class Stock {
  final String id;
  final String brand;
  final String model;
  final String modelId;
  final String quantity;
  final String quantityEnable;

  const Stock({
    @required this.id,
    @required this.brand,
    @required this.model,
    @required this.modelId,
    @required this.quantity,
    @required this.quantityEnable,
  });
}