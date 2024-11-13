import 'package:app/screen/functions/healthy.dart';
import 'package:app/screen/testdb.dart';
import 'package:app/screen/widget/nav.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  List<dynamic> users = [];

// void _makePhoneCall(String phoneNumber) {
//   final Uri launchUri = Uri(
//     scheme: 'tel',
//     path: phoneNumber
//   );
//   // เปิดแอปโทรศัพท์
//     if (Platform.isIOS || Platform.isAndroid) {
//       // ใช้ช่องทางระบบปฏิบัติการเพื่อเปิดโทรศัพท์
//       // แอปจะเปิดตาม URL scheme
//       try {
//         MethodChannel channel = const MethodChannel("com.example.app/phone"); // เปลี่ยนชื่อช่องทางตามต้องการ
//         channel.invokeMethod('launch', launchUri.toString());
//       } catch (e) {
//         print("Error: $e");
//       }
//     }
//   }


  
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          titleTextStyle: const TextStyle(color: Colors.white,fontSize: 24),
          iconTheme: const IconThemeData(color: Colors.white,size: 28),
          elevation: 0,
          title: const Text("JaiD",style: TextStyle(fontWeight: FontWeight.bold),),
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.qr_code))],
        ),
        drawer: const NavDrawer(),
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomAppBar(
          color: Colors.blue,
          shape: const CircularNotchedRectangle(),
          notchMargin: 4.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home,color: Colors.white,size: 40),),
              IconButton(
                onPressed: () {}, 
                icon: Icon(Icons.lock_clock,color: Colors.white,size: 40,)),
              IconButton(
                onPressed: () {}, 
                icon: Icon(Icons.chat,color: Colors.white,size: 40)),
              IconButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => HealthyScreen()));}, 
                icon: Icon(Icons.task,color: Colors.white,size: 40)),
            ],
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(45, 50.0, 45, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('ยินดีต้อนรับ !',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold
                  ),),
                const Text('Admin',
                  style: TextStyle(
                    fontSize: 18,
                  ),),
                

                const SizedBox(height: 500),

                  
            ],),),
        
      
    );
  }
}




// class CustomAppBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           // Custom AppBar
//           Container(
//             padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 10, left: 16, right: 16, bottom: 20),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(24),
//                 bottomRight: Radius.circular(24),
//               ),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.withOpacity(0.3),
//                   spreadRadius: 2,
//                   blurRadius: 10,
//                   offset: Offset(0, 3), // changes position of shadow
//                 ),
//               ],
//             ),
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     CircleAvatar(
//                       radius: 30,
//                       backgroundColor: Colors.grey[300],
//                       // Replace with user profile image if needed
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'ยินดีต้อนรับคุณ',
//                           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                         ),
//                         Text(
//                           'administrator',
//                           style: TextStyle(fontSize: 16, color: Colors.grey[600]),
//                         ),
//                       ],
//                     ),
//                     CircleAvatar(
//                       radius: 20,
//                       backgroundColor: Colors.grey[300],
//                       // Replace with other icon if needed
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 20),
//                 // Additional buttons or icons below the main row
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: List.generate(
//                     4,
//                     (index) => Container(
//                       height: 50,
//                       width: 50,
//                       color: Colors.grey[300],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           // Other content below the custom AppBar
//           Expanded(
//             child: Center(child: Text("Your content here")),
//           ),
//         ],
//       ),
//     );
//   }
// }
