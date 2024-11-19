import 'package:flutter/material.dart';

class healthScreen extends StatelessWidget {
  const healthScreen({super.key});

  @override
    Widget build(BuildContext context) => Scaffold(
        body: const Text('health'),
        appBar: AppBar(
          title: const Text('ด้านสุขภาพ',style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blue,
          leading: Builder(
            builder: (context) => IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                onPressed: () {
                   Navigator.pop(context);
                }),
          ),
        ),
      );


          // ฟังก์ชันสำหรับแสดง AlertDialog
  void _showDialog(BuildContext context, String title, String content) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // ปิด dialog
              },
              child: const Text('ปิด'),
            ),
          ],
        );
      },
    );
  }
}