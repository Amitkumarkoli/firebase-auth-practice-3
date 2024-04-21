import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key,});

  @override
  State<Login> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  signIn() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: email.text, password: password.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Image(image: AssetImage('Assets/images/auth_image.png')),
                  TextField(
                    controller: email,
                    decoration:
                        const InputDecoration(hintText: 'Enter your email'),
                  ),
                  TextField(
                    controller: password,
                    decoration:
                        const InputDecoration(hintText: 'Enter your password'),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                      onPressed: (()=>signIn()),
                      style: const ButtonStyle(
                          fixedSize: MaterialStatePropertyAll(Size(150, 50))),
                      child: const Text('Log In')),
                ],
              ),
            ),
          ),
        ));
  }
}
