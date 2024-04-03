import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key, required this.title});

  final String title;

  @override
  State<Login> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Login> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                controller: email,
                decoration: const InputDecoration(hintText: 'Enter your email'),
              ),
              TextField(
                controller: password,
                decoration:
                    const InputDecoration(hintText: 'Enter your password'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(onPressed: (){}, 
              child: const Text('Log In')),
            ],
          ),
        ));
  }
}