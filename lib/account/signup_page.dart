import 'dart:developer';

import 'package:fiverr_app/pages/home_screen.dart';
import 'package:fiverr_app/service/firebase_authentication.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _auth = FirebaseAuthentication();

  bool _isObscured = true;

  final _emailController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  void _togglePasswordVisibility() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   leading: IconButton(
      //     icon: const Icon(Icons.arrow_back),
      //     onPressed: () {
      //       Navigator.of(context).pushReplacement(
      //           MaterialPageRoute(builder: (_) => const JoinScreen()));
      //     },
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    )),
              ),
            ),
            const SizedBox(height: 16.0),
            // 2nd Input Text Feild
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration.collapsed(
                    // Collapsed is used for box fitting
                    hintText: 'Public Username',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    )),
              ),
            ),
            const SizedBox(height: 3),
            const Text(
              'You can\'t change your username, so choose wisely.',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black38,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            // 3rd Input Text Feild
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
            const SizedBox(height: 8.0),
            const Text(
              '-- At least 8 characters',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black38,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              '-- At least 1 uppercase letter',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black38,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              '-- At least 1 lowercase letter',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black38,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              '-- At least 1 number',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black38,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: _signup,
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50.0),
                backgroundColor: Colors.green, // Border color and width
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // Border radius
                ),
              ),
              child: const Text(
                'Sign Up',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'By joinings, you agree to Fiverr\'s  ',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    'Terms and Conditions.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  gotohome(BuildContext context) => Navigator.push(
  context, MaterialPageRoute(builder: (context) => const HomeScreen()));

  _signup() async {
    final user = await _auth.createUserWithEmailandPassword(
        _emailController.text,
        _passwordController.text,
        _usernameController.text);
    if (user != null) {
      log("User Created Successfully");
      gotohome(context);
    }
  }
}
