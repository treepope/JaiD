import 'dart:ffi';

import 'package:flutter/material.dart';

import '../models/snackbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// TODO ข้อมูลการทานยา
const String usernameTest = "ตรีภพ";
const String medicalTest = "Retinal A";
const String symptomTest = "ปวดศรีษะเล็กน้อย นอนหลับไม่เพียงพอ";
const String dateTest = '12:00';

// TODO ข้อมูลสุขภาพ
const String genderTest = "ชาย";
const String bloodType = "A";
const String persornalInfo = "หายใจหอบหืด";
const String feelTest = "รู้สึกกดดัน ไม่ค่อยสบายใจ";
double weightTest = 50.0; 
double heightTest = 170.5;
int water = 5;



class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) { 
    // สร้าง TimeOfDay ที่เป็นเวลา ณ ตอนนี้
        TimeOfDay now = TimeOfDay.now();
    // แปลง TimeOfDay เป็น String เพื่อแสดงใน UI
        String formatTime = now.format(context);


    return Scaffold(
    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center( // Aligns the Card in the center horizontally
              child: Container(
                width: 400,
                height: 300,
                child: Card(
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  elevation: 8,
                  child: Padding( // Padding inside the Card
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('lib/images/jaiD_logo.png', width: 150, height: 150),
                        const SizedBox(height: 16), // Space between elements
                        const Text('JaiD แอปพลิเคชัน',style: TextStyle(color: Colors.white,fontSize: 36,fontWeight: FontWeight.bold),),
                        const SizedBox(height: 8), // Space between elements
                        const Text('ยินดีต้อนรับคุณ : $usernameTest 💐' ,style: TextStyle(color : Colors.white,fontSize: 16),)
                      ],
                    ),
                  ),
                ),
              ),
              
            ),

            Container(
                width: 400,
                height: 220,
                child: Card(
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  elevation: 8,
                  child:  Padding( // Padding inside the Card
                    padding:  const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Center(child: Text('ข้อมูลการทานยาล่าสุด',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),)),
                        const SizedBox(height: 8), // Space between elements
                        const Text('ทานยาล่าสุด : $dateTest',style: TextStyle(color : Colors.white,fontSize: 16),),
                        const Text('ชื่อยา : $medicalTest',style: TextStyle(color : Colors.white,fontSize: 16),),
                        const Text('อาการ : $symptomTest',style: TextStyle(color : Colors.white,fontSize: 16),),
                        const SizedBox(height: 15),
                        Text('ต้องทานอีกเมื่อ : $formatTime',style: const TextStyle(color : Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                       
                      ],
                    ),
                  ),
                ),
              ),

              Container(
                width: 400,
                height: 320,
                child: Card(
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  elevation: 8,
                  child:  Padding( // Padding inside the Card
                    padding:  const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Center(child: Text('ข้อมูลสุขภาพล่าสุด',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),)),
                        const SizedBox(height: 8), // Space between elements
                        const Text('เพศ : $genderTest',style: TextStyle(color : Colors.white,fontSize: 16),),
                        const Text('กรุ๊ปเลือด : $bloodType',style: TextStyle(color : Colors.white,fontSize: 16),),
                        Text('ส่วนสูง : $heightTest',style: const TextStyle(color : Colors.white,fontSize: 16),),
                        Text('น้ำหนัก : $weightTest',style: const TextStyle(color : Colors.white,fontSize: 16),),
                        const Text('โรคส่วนตัว : $persornalInfo',style: TextStyle(color : Colors.white,fontSize: 16),),
                        const Text('ความรู้สึกของวันนี้ : $feelTest',style: TextStyle(color : Colors.white,fontSize: 16),),
                        Text('ปริมาณน้ำที่ดื่มไปวันนี้ : $water',style: const TextStyle(color : Colors.white,fontSize: 16),),
                        const SizedBox(height: 15),
                        Text('สถานะร่างกาย : ${water<8?'ดื่มน้ำน้อยไป 🥵':'ดื่มน้ำพอเหมาะ 👍'}',style: const TextStyle(color : Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
              ),

              
          ],
        ),
      ),
    ));
}}
