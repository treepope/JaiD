import 'package:flutter/material.dart';

import '../../../models/snackbar.dart';
import '../../auth/profile.dart';

class foodScreen extends StatelessWidget {
  const foodScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: const Text('food'),
        appBar: AppBar(
          title: const Text('ด้านอาหาร',style: TextStyle(color: Colors.white),),
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
