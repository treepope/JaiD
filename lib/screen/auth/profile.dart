import 'package:app/screen/home.dart';
import 'package:flutter/material.dart';

class profileScreen extends StatelessWidget {
  const profileScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: const Text('food'),
        appBar: AppBar(
          title: const Text('ข้อมูลส่วนบุคคล',style: TextStyle(color: Colors.white),),
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
}