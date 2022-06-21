import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(24),
        color: Colors.white,
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            Text(
              'Sign Up',
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(height: 32),
            TextField(
              decoration: getInputDecoration(hint: 'Name'),
            ),
            const SizedBox(height: 24),
            TextField(
              decoration: getInputDecoration(hint: 'Email'),
            ),
            const SizedBox(height: 24),
            TextField(
              decoration: getInputDecoration(hint: 'Password'),
            ),
            const SizedBox(height: 24),
            TextField(
              decoration: getInputDecoration(hint: 'Password again'),
            ),
            const SizedBox(height: 24),
            TextField(
              decoration: getInputDecoration(hint: 'Date of birth'),
            ),
          ],
        ),
      ),
    );
  }

  InputDecoration getInputDecoration({required String hint}) {
    return InputDecoration(
      hintText: hint,
      border: const OutlineInputBorder(),
    );
  }
}
