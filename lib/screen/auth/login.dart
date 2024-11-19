import 'package:app/models/snackbar.dart';
import 'package:app/screen/auth/register.dart';
import 'package:app/screen/widget.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  // TODO Gloabal _formKey
  final _formKey = GlobalKey<FormState>();
  final _navigatorKey = GlobalKey<FormState>();

  void loginTest() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => NavWidget()));
      SuccessLogInSnackBar(context);
    } else {FailLogInSnackBar(context);}
  }

  void login() {
    Navigator(
      key: _navigatorKey,
      onGenerateRoute: (settings) =>
          MaterialPageRoute(builder: (context) => NavWidget()),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(60.0, 120, 60.0, 5),
          child: Center(
              child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('lib/images/jaiD_logo.png', width: 150, height: 150),
                const SizedBox(height: 15),
                const Text(
                  'JaiD',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),

                // TODO Form fields
                const SizedBox(height: 50),
                TextFormField(
                  controller: _emailController,
                  decoration:
                      const InputDecoration(hintText: "โปรดกรอกอีเมลล์ของคุณ"),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'กรอกอีเมลล์อีกครั้ง';
                    } else
                      null;
                  },
                ),
                const SizedBox(height: 15),
                TextFormField(
                  obscureText: true,
                  controller: _passwordController,
                  decoration:
                      const InputDecoration(hintText: "โปรดกรอกรหัสผ่านของคุณ"),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'กรอกรหัสผ่านอีกครั้ง';
                    } else
                      null;
                  },
                ),

                const SizedBox(height: 35),
                // TODO Button
                ElevatedButton(
                  autofocus: true,
                  onPressed: () {
                    loginTest();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(200, 50)),
                  child: const Text(
                    'เข้าสู่ระบบ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),

                // TODO Register
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen()));
                    },
                    child: const Text('สมัครบัญชีได้ที่นี้'))
              ],
            ),
          )),
        ),
      );
}
