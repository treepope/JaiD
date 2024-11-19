import 'package:flutter/material.dart';

// TODO : var setup
var success = Colors.green;
var error = Colors.red; 
var padding = const EdgeInsets.all(20);


void SuccessSnackBar(BuildContext context) {
  final snackbar = SnackBar(
    content: const Text('Success'),
    backgroundColor: success,
    padding: padding,
  ); ScaffoldMessenger.of(context).showSnackBar(snackbar);
}

void FailSnackBar(BuildContext context) {
  final snackbar = SnackBar(
    content: const Text('Fail'),
    backgroundColor: error,
    padding: padding,
  ); ScaffoldMessenger.of(context).showSnackBar(snackbar);
}

void SuccessLogInSnackBar(BuildContext context) {
  final snackbar = SnackBar(
    content: const Text('เข้าสู่ระบบสำเร็จ'),
    backgroundColor: success,
    padding: padding,
  ); ScaffoldMessenger.of(context).showSnackBar(snackbar);
}

void FailLogInSnackBar(BuildContext context) {
  final snackbar = SnackBar(
    content: const Text('เข้าสู่ระบบไม่สำเร็จ'),
    backgroundColor: error,
    padding: padding,
  );
}

void SuccessRegisterSnackBar(BuildContext context) {
  final snackbar = SnackBar(
    content: const Text('ลงทะเบียนสำเร็จ'),
    backgroundColor: success,
    padding: padding,
  ); ScaffoldMessenger.of(context).showSnackBar(snackbar);
}

void FailRegisterSnackBar(BuildContext context) {
  final snackbar = SnackBar(
    content: const Text('ลงทะเบียนไม่สำเร็จ'),
    backgroundColor: error,
    padding: padding,
  ); ScaffoldMessenger.of(context).showSnackBar(snackbar);
}
