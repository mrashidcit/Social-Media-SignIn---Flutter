import 'package:flutter/material.dart';
import 'package:social_media_signin/home_page.dart';
import 'package:social_media_signin/login.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:social_media_signin/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseApp app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const HomePage(),
      home: LoginScreen(),
    );
  }
}
