import 'dart:io';
import 'package:firebase_auth_practice3/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


void main() async{
  
    WidgetsFlutterBinding.ensureInitialized();

    Platform.isAndroid 
    ?   await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyAudwumS4i45qnnLKR29TY8DfH1zXL65d0', 
        appId: '1:858795082528:android:1658d1c358821698ec8d45', 
        messagingSenderId: '858795082528', 
        projectId: 'fir-auth-practice-3'
    )) 
  : await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Wrapper(),
    );
  }
}

