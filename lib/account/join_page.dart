import 'package:fiverr_app/account/login_page.dart';
import 'package:fiverr_app/account/signup_page.dart';
import 'package:flutter/material.dart';

class JoinScreen extends StatefulWidget {
  const JoinScreen({super.key});

  @override
  State<JoinScreen> createState() => _JoinScreenState();
}

class _JoinScreenState extends State<JoinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => const LoginScreen()));
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(padding: EdgeInsets.all(5)),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(
                    'assets/fiverr_logo.png') // Replace with user image URL
                  ),
              SizedBox(height: 10),
              Text(
                'Join Fiverr',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 35,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Create an account and discover thousands of\nrelevant services, Connect with freelancers, and\nCheck out easily on Fiverr\'s trusted platform.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.email),
            label: const Text('Continue With Google'),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
              side: const BorderSide(color: Colors.black12),
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 70),
              textStyle: const TextStyle(fontSize: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // Border radius
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.facebook),
            label: const Text('Continue With Facebook'),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 60),
              textStyle: const TextStyle(fontSize: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // Border radius
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_) => const SignupScreen()));
            },
            icon: const Icon(Icons.email_outlined),
            label: const Text('Sign Up With Email'),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color(0xFF1DBF73),
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 80),
              textStyle: const TextStyle(fontSize: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // Border radius
              ),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'By joining, you agree to Fiverr\'s ',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold),
              ),
              InkWell(
                onTap: () {
                  // Handle the Terms of Service link
                },
                child: const Text(
                  'Terms of Service',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Already have an account? ',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => const LoginScreen()));
                },
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
