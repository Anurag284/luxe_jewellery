import 'package:flutter/material.dart';
import 'package:luxe_jewellery/Pages/navbar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static const String id = 'admin@gmail.com';
  static const String password = '123456';

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  String errorMessage = '';
  bool isLoggedIn = false;
  // int incorrectPasswordAttempts = 1;

  void login() {
    setState(() {
      if (emailController.text.isEmpty || passwordController.text.isEmpty) {
        errorMessage = 'Please enter email and password.';
      } else if (emailController.text.trim() == id &&
          passwordController.text.trim() == password) {
        isLoggedIn = true;
        // } else if (emailController.text.trim() == id &&
        //     passwordController.text.trim() != password) {
        //   errorMessage = 'Incorrect password. Please try again.';
        // } else {
        errorMessage = 'Invalid email or password.';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: isLoggedIn ? Navbar() : _loginpage());
  }

  Widget _loginpage() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/logo.png'),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                "Luxe Jewellery",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: Text(
                "Welcome Back! Please login to your account",
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
            ),
            SizedBox(height: 30),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: 'Email/Username',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            if (errorMessage.isNotEmpty) ...[
              SizedBox(height: 10),
              Text(errorMessage, style: TextStyle(color: Colors.red)),
            ],
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: login,
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
