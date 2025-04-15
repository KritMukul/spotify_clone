import 'package:flutter/material.dart';
import 'package:spotify_clone/core/theme/app_pallete.dart';
import 'package:spotify_clone/features/auth/view/widgets/auth_graduent_button.dart';
import 'package:spotify_clone/features/auth/view/widgets/custom_text_field.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign Up',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            CustomField(hintText: 'Name'),
            SizedBox(height: 15),
            CustomField(hintText: 'Email'),
            SizedBox(height: 15),
            CustomField(hintText: 'Password'),
            SizedBox(height: 20),
            AuthGraduentButton(),
            SizedBox(height: 20),
            RichText(
              text: TextSpan(
                text: 'Already have an accound? ',
                style: Theme.of(context).textTheme.titleMedium,
                children: [
                  TextSpan(
                    text: 'Sign In',
                    style: TextStyle(
                      color: Pallete.gradient2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
