import 'package:app/screen/auth/register.dart';
import 'package:app/screen/home.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();
  bool visiblePassword = true;
  
  @override
  Widget build(BuildContext context) => Scaffold(
    body: Padding(
      padding: const EdgeInsets.fromLTRB(45, 150.0, 45, 25),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            const CircleAvatar(
              radius: 80,
            ),
            const SizedBox(height: 5),
            const Text('JaiD',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold
                ),),
            const SizedBox(height: 30),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Enter your email';
                } return null;
              },
            ),


            const SizedBox(height: 16),


            TextFormField(
              controller: _passwordController,
              obscureText: visiblePassword,
              decoration: InputDecoration(
                labelText: 'Password',
                suffixIcon: IconButton(
                  onPressed: () => setState(() {
                     visiblePassword = !visiblePassword;
                  }), 
                  icon: Icon(visiblePassword ? Icons.visibility_off : Icons.visibility))),
                  validator: (value) {
                    if(value == null || value.isEmpty) {
                      return 'Enter your password';}
                      return null;
                  } ,
            ),

            const SizedBox(height: 60),


            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Welcome !')),
                  );
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
              child: const Text('เข้าสู่ระบบ',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
            ),
            const SizedBox(height: 5),
            
            // NOTE: regierter screen 
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => RegisterScreen())
                  );
                },
                child: const Text("ลงทะเบียนที่นี่"),
              ),
          ],
        )),),

    backgroundColor: Colors.white,
    
  );
}