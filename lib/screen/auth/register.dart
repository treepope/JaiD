import 'package:app/models/snackbar.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  // TODO Gloabal _formKey
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  void Register() {

    SuccessRegisterSnackBar(context);


  }
  
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(60.0, 50, 60.0, 5),
          child: Center(
              child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('lib/images/jaiD_logo.png', width: 150, height: 150),
                const SizedBox(height: 15),
                const Text(
                  'JaiD ลงทะเบียน',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),

                // TODO Form fields
                const SizedBox(height: 30),
                TextFormField(
                  controller: _usernameController,
                  decoration:
                      const InputDecoration(hintText: "ชื่อผู้ใช้"),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'กรอกชื่ออีกครั้ง';
                      } else null;
                  },
                ),
                const SizedBox(height: 15),
                TextFormField(
                  controller: _emailController,
                  decoration:
                      const InputDecoration(hintText: "อีเมลล์"),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'กรอกอีเมลล์อีกครั้ง';
                      } else null;
                  },
                ),
                const SizedBox(height: 15),
                TextFormField(
                  obscureText: true,
                  controller: _passwordController,
                  decoration:
                      const InputDecoration(hintText: "รหัสผ่าน"),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'กรอกรหัสผ่านอีกครั้ง';
                      } else null;
                  },
                ),

                 const SizedBox(height: 15),
                TextFormField(
                  obscureText: true,
                  controller: _confirmPasswordController,
                  decoration:
                      const InputDecoration(hintText: "ยืนยันรหัสผ่าน"),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'กรอกรหัสผ่านอีกครั้ง';
                      } else null;
                  },
                ),

                const SizedBox(height: 15),
                // TODO Button
               ElevatedButton(
                  autofocus: true,
                  onPressed: () {
                    Register();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('ลงทะเบียน',style: TextStyle(fontWeight: FontWeight.bold),),
            ),

            
            ],
            ),
          )),
        ),
      );


  }