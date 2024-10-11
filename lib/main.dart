import 'package:firebase_core/firebase_core.dart';
import 'package:fiverr_app/pages/splash_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();


  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBcuWFaB_hPZmywPm5ew-D3pEhk2U56k0o",
            authDomain: "fiverr-23fcb.firebaseapp.com",
            projectId: "fiverr-23fcb",
            storageBucket: "fiverr-23fcb.appspot.com",
            messagingSenderId: "364496965030",
            appId: "1:364496965030:web:cd82a57b67049e9bacd367"));
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

// khanlala@gmail.com
// Khan Lala
// password
// Khanlala123


// Install Firebase CLI 
// npm install -g firebase-tools 

// Diploy to firebase hosting

// You can deploy now or later. To deploy now, open a terminal window, then navigate to or create a root directory for your web app.
// Sign in to Google
// firebase login

// Initiate your project
// Run this command from your app's root directory:
// firebase init

// When you're ready, deploy your web app
// Put your static files (e.g., HTML, CSS, JS) in your app's deploy directory (the default is "public"). Then, run this command from your app's root directory:
// firebase deploy