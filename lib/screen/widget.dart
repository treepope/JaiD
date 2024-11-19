import 'package:app/models/snackbar.dart';
import 'package:app/screen/auth/login.dart';
import 'package:app/screen/auth/profile.dart';
import 'package:app/screen/functions/faq.dart';
import 'package:app/screen/functions/healthy.dart';
import 'package:app/screen/functions/reminder.dart';
import 'package:app/screen/home.dart';
import 'package:flutter/material.dart';

class NavWidget extends StatefulWidget {
  const NavWidget({super.key});

  @override
  State<NavWidget> createState() => _NavWidgetState();
}

class _NavWidgetState extends State<NavWidget> {
  int _navBarIndex = 0;

  final List<Widget> _widgetOption = <Widget>[
    HomeScreen(),
    HealthyScreen(),
    ReminderScreen(),
    FaqScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _navBarIndex = index;
    });
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.only(top: 80),
        children: <Widget>[
          Image.asset('lib/images/jaiD_logo.png', width: 150, height: 150),
          const SizedBox(height: 15),
          const Center(
            child: Text(
              'JaiD',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),

          _buildDrawerItem(
            context, icon: Icons.home, text: 'หน้าหลัก', index: 0),
          _buildDrawerItem(
              context, icon: Icons.health_and_safety, text: 'บันทึกข้อมูลสุขภาพ', index: 1),
          _buildDrawerItem(
              context, icon: Icons.medical_information, text: 'ข้อมูลการทานยา', index: 2),
          _buildDrawerItem(
            context, icon: Icons.question_answer, text: 'คำถามที่พบบ่อย', index: 3),
          
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('ออกจากระบบ'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LogInScreen()),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(BuildContext context,
      {required IconData icon, 
      required String text, 
      required int index}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
      selected: _navBarIndex == index,
      onTap: () {
        Navigator.pop(context);
        _onItemTapped(index);
      },
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: Builder(
            builder: (context) => IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                }),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.person,
                color: Colors.white,
              ),
              onPressed: () {
                 Navigator.push(context,MaterialPageRoute(builder: (context) => profileScreen()));
              },
            ),
          ],
        ),


        
        drawer: _buildDrawer(context),
        body: Center(child: _widgetOption.elementAt(_navBarIndex)),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "หน้าหลัก"),
            BottomNavigationBarItem(icon: Icon(Icons.health_and_safety), label: "บันทึกข้อมูลสุขภาพ"),
            BottomNavigationBarItem(icon: Icon(Icons.medical_information), label: "ข้อมูลการทานยา"),
            BottomNavigationBarItem(icon: Icon(Icons.question_answer), label: "FAQ"),
          ],
          iconSize: 36,
          currentIndex: _navBarIndex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
        ),
      );
}
