import 'package:flutter/cupertino.dart';

class User {
  final String id;
  final String user;
  final String name;
  final String pw;
  final String surname;
  final String status;

  const User({
    @required this.id,
    @required this.user,
    @required this.name,
    @required this.pw,
    @required this.surname,
    @required this.status,
  });
}