import 'package:app/screen/auth/login.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final _formKey = GlobalKey<FormState>();

  //TODO config text controller
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  bool visiblePassword = true;
  bool visbleConfirmPassword = true;

  //TODO : config valid email
  final String validUsername = 'admin';
  final String validEmail = 'admin@tset.com';
  final String validPassword = '1234' ;
  String _errorMsg = '';


  //TODO : function entered email and password
  void _handleLogin() {
    String enterUsername = _usernameController.text;
    String enterEmail = _emailController.text;
    String enterPassword = _passwordController.text;

    if (enterEmail == validEmail && enterPassword == validPassword) {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
    } else {
      setState(() {
        _errorMsg = 'อีเมลหรือรหัสผ่านไม่ถูกต้อง';
      });
    }
  }

  @override

  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue,
      iconTheme: const IconThemeData(
          color: Colors.white, // Set the back button color to white
        ),
    ),
    body: Padding(
      padding: const EdgeInsets.fromLTRB(45, 50.0, 45, 25),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            const CircleAvatar(
              radius: 80,
            ),
            const SizedBox(height: 16),
            const Text('JaiD ลงทะเบียน',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
                ),),
            const SizedBox(height: 50),

          //TODO username
            TextFormField(
              controller: _usernameController,
              decoration: const InputDecoration(labelText: 'ชื่อผู้ใช้'),
              validator: (value) {if(value == null || value.isEmpty) 
                return 'กรอกชื่ออีกครั้ง !' ; return null;},
            ),

            const SizedBox(height: 16),

            //TODO email
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'อีเมล'),
              validator: (value) {if(value == null || value.isEmpty) 
                return 'กรอกอีเมล์อีกครั้ง !' ; return null;},
            ),

            const SizedBox(height: 16),

            //TODO password field
            TextFormField(
              controller: _passwordController,
              obscureText: visiblePassword,
              decoration: InputDecoration(
                labelText: 'รหัสผ่าน',
                suffixIcon: IconButton(
                  icon: Icon(visiblePassword ? Icons.visibility_off : Icons.visibility), 
                  onPressed: () => setState(() {
                    visiblePassword = !visiblePassword;
                  }),
                )),
                validator: (value) {
                  if(value == null || value.isEmpty) {
                    return 'โปรดกรอกรหัสผ่าน';}
                    return null;
                } ,
            ),

            const SizedBox(height: 16),

            //TODO confirm password
            TextFormField(
              controller: _confirmPasswordController,
              obscureText: visbleConfirmPassword,
              decoration: InputDecoration(
                labelText: 'ยืนยันรหัสผ่าน',
                suffixIcon: IconButton(
                  icon: Icon(visbleConfirmPassword ? Icons.visibility_off : Icons.visibility),
                  onPressed: () => setState(() {
                    visbleConfirmPassword = !visbleConfirmPassword;
                  }),),
                ),
                validator: (value) {
                  if(value == null || value.isEmpty) return 'Please enter password again !'; 
                  else if(value != _passwordController.text) return 'Password do not mactch'; return null;
                },
            ),

            const SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('ลงทะเบียนเสร็จสิ้น !')),);
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                  }
                  
                
              },
              style: ButtonStyle( 
                backgroundColor: WidgetStateProperty.all(Colors.blue), // bg
                foregroundColor: WidgetStateProperty.all(Colors.white), // text color
                fixedSize: WidgetStateProperty.all(Size(400, 50)),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(45),
                  ),
                )
              ),
              child: const Text('ลงทะเบียน',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
            ),
          ],
        )),),

    backgroundColor: Colors.white,
    
  );
}