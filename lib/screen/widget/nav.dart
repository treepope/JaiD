import 'package:app/screen/auth/login.dart';
import 'package:app/screen/functions/healthy.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildHeader(context),
          buildMenuItems(context),
        ],
      ),
    ),
  );


// widget configuration
  Widget buildHeader (BuildContext context) => Container(
    color: Colors.blue,
    padding: EdgeInsets.only(
      top: 24 + MediaQuery.of(context).padding.top,
      bottom: 24,
    ),
    child: const Column(
      children: [
        CircleAvatar(
          radius: 52,
        ),
        SizedBox(height: 12),
        Text('Admin',style: TextStyle(fontSize: 28,color: Colors.white,fontWeight: FontWeight.bold)),
        Text('admin1234@test.com',style: TextStyle(fontSize: 16,color: Colors.white))
      ],
    ),
  );
  Widget buildMenuItems (BuildContext context) => Wrap(
    runSpacing: 10,
    children: [
      ListTile(
        leading: const Icon(Icons.home_outlined),
        title: const Text('หน้าหลัก'),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.lock_clock_outlined),
        title: const Text('เตือนความจำ'),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.chat_outlined),
        title: const Text('กระดานสนทนา'),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.task_outlined),
        title: const Text('คู่มือดูแลสุขภาพ'),
        onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => HealthyScreen()));},
      ),
      
      const SizedBox(height: 250),
      const Divider(color: Colors.grey),
      ListTile(
        leading: const Icon(Icons.logout_outlined),
        title: const Text('ออกจากระบบ'),
        onTap: () {
          Navigator.push(
            context, MaterialPageRoute(builder: (context) => LogInScreen()));
        },
      ),
    ],
  );
}