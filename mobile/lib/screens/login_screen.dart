import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff24293e),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'Remote PC',
            style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Color(0xfff4f5fc)),
          ),
          TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.login_rounded),
              label: const Text(
                'Login with Google',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: const ButtonStyle(
                foregroundColor: MaterialStatePropertyAll(Color(0xfff4f5fc)),
                backgroundColor: MaterialStatePropertyAll(Color(0xff8ebbff)),
              )),
        ]),
      ),
    );
  }
}
