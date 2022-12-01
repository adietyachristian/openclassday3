import 'package:flutter/material.dart';

import '../widgets/custom_text_field.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF5038BC),
      body: Padding(
        padding: const EdgeInsets.all(48.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
              controller: usernameController,
              title: 'USERNAME',
            ),
            const SizedBox(height: 16),
            CustomTextField(
              controller: passwordController,
              title: 'PASSWORD',
              obscureText: true,
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                if (usernameController.text == "pacil" &&
                    passwordController.text == "12345") {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomePage()));
                } else {
                  print("SALAH");
                }
              },
              style: ElevatedButton.styleFrom(
                  elevation: 0, backgroundColor: Colors.white),
              child: const Text(
                'LOGIN',
                style: TextStyle(
                  color: Color(0XFF5038BC),
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
