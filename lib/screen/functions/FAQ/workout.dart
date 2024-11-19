import 'package:flutter/material.dart';

import '../../../models/snackbar.dart';

class workoutScreen extends StatelessWidget {
  const workoutScreen({super.key});

  @override
    Widget build(BuildContext context) => Scaffold(
        body: const Text('workout'),
        appBar: AppBar(
          title: const Text('ด้านออกกำลังกาย',style: TextStyle(color: Colors.white),),
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