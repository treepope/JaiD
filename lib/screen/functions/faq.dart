import 'package:app/screen/functions/FAQ/food.dart';
import 'package:app/screen/functions/FAQ/health.dart';
import 'package:app/screen/functions/FAQ/workout.dart';
import 'package:flutter/material.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({super.key});

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        _showDialogFAQ(context);
      },
      backgroundColor: Colors.deepOrangeAccent,
      child: const Icon(Icons.add,color: Colors.white,),),
        body: SingleChildScrollView(
          child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Container(
                width: 400,
                height: 120,
                child: Card(
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 8,
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'คำถามที่พบบ่อย\nการดูแลด้านสุขภาพ',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => foodScreen()));
                        },
                        child: const Text('ด้านอาหาร')),
                    const SizedBox(width: 15),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => workoutScreen()));
                        },
                        child: const Text('ด้านการออกกำลังกาย')),
                    const SizedBox(width: 15),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => healthScreen()));
                        },
                        child: const Text('ด้านสุขภาพจิต')),
                  ],
                ),
              ),
              // Container(
              //   width: 400,
              //   height: 300,
              //   child: Card(
              //     color: Colors.blue,
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(12),
              //     ),
              //     elevation: 8,
              //     child: const Padding(
              //       padding: EdgeInsets.all(20.0),
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              const SizedBox(height: 30),
              Center(child: Image.asset('lib/images/01.jpg',width: 200,height: 150)),
              const Text('ผู้สูงอายุเป็นกลุ่มคนที่มีความสำคัญในสังคม เนื่องจากเป็นกลุ่มที่มีประสบการณ์ชีวิตและภูมิปัญญาที่สามารถถ่ายทอดให้กับคนรุ่นหลังได้ ในปัจจุบันจำนวนผู้สูงอายุในหลายประเทศเพิ่มขึ้นอย่างต่อเนื่อง ซึ่งเป็นผลมาจากการพัฒนาการแพทย์และสุขภาพที่ทำให้คนมีอายุยืนยาวขึ้น ขณะเดียวกันก็มีการเปลี่ยนแปลงในด้านการดำรงชีวิต เช่น การปรับตัวให้เข้ากับเทคโนโลยีและการให้ความสำคัญกับสุขภาพร่างกายและจิตใจ'),
              const SizedBox(height: 15),
              Center(child: Image.asset('lib/images/02.jpg',width: 200,height: 150)),
              const Text('ผู้การดูแลผู้สูงอายุจึงเป็นเรื่องที่สำคัญ โดยไม่เพียงแต่ในด้านการรักษาพยาบาล แต่ยังรวมถึงการส่งเสริมความเป็นอยู่ที่ดี เช่น การจัดกิจกรรมทางสังคมที่ช่วยให้ผู้สูงอายุมีปฏิสัมพันธ์กับผู้อื่น การดูแลเรื่องอาหารการกิน และการสนับสนุนการออกกำลังกายเพื่อสุขภาพที่ดี นอกจากนี้ การพัฒนานโยบายและสังคมที่เอื้อต่อการดูแลผู้สูงอายุเป็นสิ่งสำคัญที่ควรได้รับความสนใจในทุกภาคส่วน เพื่อให้ผู้สูงอายุสามารถมีชีวิตที่มีคุณภาพและมีความสุขในช่วงชีวิตที่เหลืออยู่.'),
              const SizedBox(height: 15),
              Center(child: Image.asset('lib/images/03.jpg',width: 200,height: 150)),
              const Text('ผู้สูงอายุเป็นกลุ่มคนที่มีความสำคัญในสังคม เนื่องจากเป็นกลุ่มที่มีประสบการณ์ชีวิตและภูมิปัญญาที่สามารถถ่ายทอดให้กับคนรุ่นหลังได้ ในปัจจุบันจำนวนผู้สูงอายุในหลายประเทศเพิ่มขึ้นอย่างต่อเนื่อง ซึ่งเป็นผลมาจากการพัฒนาการแพทย์และสุขภาพที่ทำให้คนมีอายุยืนยาวขึ้น ขณะเดียวกันก็มีการเปลี่ยนแปลงในด้านการดำรงชีวิต เช่น การปรับตัวให้เข้ากับเทคโนโลยีและการให้ความสำคัญกับสุขภาพร่างกายและจิตใจ'),
              const SizedBox(height: 15),
              Center(child: Image.asset('lib/images/04.jpg',width: 200,height: 150)),
              const Text('ผู้การดูแลผู้สูงอายุจึงเป็นเรื่องที่สำคัญ โดยไม่เพียงแต่ในด้านการรักษาพยาบาล แต่ยังรวมถึงการส่งเสริมความเป็นอยู่ที่ดี เช่น การจัดกิจกรรมทางสังคมที่ช่วยให้ผู้สูงอายุมีปฏิสัมพันธ์กับผู้อื่น การดูแลเรื่องอาหารการกิน และการสนับสนุนการออกกำลังกายเพื่อสุขภาพที่ดี นอกจากนี้ การพัฒนานโยบายและสังคมที่เอื้อต่อการดูแลผู้สูงอายุเป็นสิ่งสำคัญที่ควรได้รับความสนใจในทุกภาคส่วน เพื่อให้ผู้สูงอายุสามารถมีชีวิตที่มีคุณภาพและมีความสุขในช่วงชีวิตที่เหลืออยู่.'),

            ],
          ),
                ),
        ));

    // ฟังก์ชันสำหรับแสดง AlertDialog
  void _showDialogFAQ(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('แสดงความคิดเห็นเพิ่มเติม'),
          content: TextFormField(),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // ปิด dialog
              },
              child: const Text('ปิด'),
            ),

            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // ปิด dialog
              },
              child: const Text('บันทึก'),
            ),
          ],
        );
      },
    );
  }
}
