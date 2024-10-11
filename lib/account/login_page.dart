
import 'dart:math';

import 'package:fiverr_app/account/join_page.dart';
import 'package:fiverr_app/pages/home_screen.dart';
import 'package:fiverr_app/service/firebase_authentication.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscured = true;

  final _auth = FirebaseAuthentication();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _togglePasswordVisibility() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => const JoinScreen()));
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                        'assets/fiverr_logo.png') // Replace with user image URL
                    ),
                SizedBox(height: 10),
                Text(
                  'Welcome to Fiverr',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Please enter your registration email and\npassword.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // 1st Input Text Feild
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                controller: _emailController,
                decoration: const InputDecoration.collapsed(
                    // Collapsed is used for box fitting
                    hintText: 'Email or Username',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    )),
              ),
            ),
            const SizedBox(height: 16.0),
            // 2nd Input Text Feild
            Container(
              padding: const EdgeInsets.only(top: 10, left: 15),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                controller: _passwordController,
                obscureText: _isObscured, // Use for hide the password
                decoration: InputDecoration(
                  border: InputBorder.none, // Remove the bottom line
                  hintText: 'Password',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  suffixIcon: IconButton(
                    padding: const EdgeInsets.only(bottom: 5, right: 10),
                    icon: Icon(
                      color: Colors.grey,
                      _isObscured ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: _togglePasswordVisibility,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: _login,
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50.0),
                backgroundColor: Colors.green, // Border color and width
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // Border radius
                ),
              ),
              child: const Text(
                'Continue',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 25),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'OR via social network',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.email),
                  label: const Text('Google'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    side: const BorderSide(color: Colors.black12),
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 65),
                    textStyle: const TextStyle(fontSize: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // Border radius
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.facebook),
                  label: const Text('Facebook'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 60),
                    textStyle: const TextStyle(fontSize: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // Border radius
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => const JoinScreen()));
                  },
                  child: const Text(
                    'Join',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    'Forgot Password',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  gotohome(BuildContext context) => Navigator.push(
  context, MaterialPageRoute(builder: (context) => const HomeScreen()));

  _login() async {
    final user = await _auth.loginUserWithEmailandPassword(
        _emailController.text,
        _passwordController.text);
        if (user != null) {
          log("User Logged Successfully" as num);
          gotohome(context);
        }
  }
}

