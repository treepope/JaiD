import 'package:flutter/material.dart';

class HealthyScreen extends StatefulWidget {
  const HealthyScreen({super.key});

  @override
  State<HealthyScreen> createState() => _HealthyScreenState();
}

class _HealthyScreenState extends State<HealthyScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
          backgroundColor: Colors.blue,
          titleTextStyle: const TextStyle(color: Colors.white,fontSize: 24),
          iconTheme: const IconThemeData(color: Colors.white,size: 28),
          elevation: 0,
          title: const Text("JaiD",style: TextStyle(fontWeight: FontWeight.bold),),
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.qr_code))],
        ),
    body:  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(45, 50, 45, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal, 
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {} , 
                    child: Text('ด้านอาหาร')),
                  const SizedBox(width:  15),
                  ElevatedButton(
                    onPressed: () {} , 
                    child: Text('ด้านการออกกำลังกาย')),
                  const SizedBox(width: 15),
                  ElevatedButton(
                    onPressed: () {} , 
                    child: Text('ด้านสุขภาพจิต')),
                ],
              ),
            ),

            const SizedBox(height: 30),
            Text('การดูแลสุขภาพ 101',
                  style:TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
            const SizedBox(height: 30),
            Text(' การดูแลสุขภาพของตัวเองให้อยู่ในสภาพที่ดีอยู่เสมอจะช่วยให้เรานอนหลับสบาย และเพิ่มความสามารถในการทำงาน หรือกิจกรรมประจำวันได้ดีขึ้น แถมยังช่วยส่งเสริมสุขภาพจิตที่ดี ดั่งคำที่ว่า “ความสุขที่แท้จริง เริ่มต้นจากสุขภาพที่ดี  นอกจากนี้การดูแลสุขภาพให้ดียังช่วยลดโอกาสเกิดโรคร้ายแรงได้อีกด้วย ดังนั้นการดูแลสุขภาพจึงเป็นเรื่องที่เราต้องให้ความสำคัญ ก็มี 10 เคล็ดลับง่าย ๆ ในการดูแลสุขภาพตัวเองให้แข็งแรง บ้างมีดังนี้”'),
          ],
        ),),
        
    ),
  );
}