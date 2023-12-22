import 'package:flutter/material.dart';
import 'package:veranco/utils/colors.dart';
import 'sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email',
              fillColor: primaryColor, focusedBorder: OutlineInputBorder(
                      borderSide: Divider.createBorderSide(context),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ), border: OutlineInputBorder(
                      borderSide: Divider.createBorderSide(context),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  )),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password',
              fillColor: secondaryColor,focusedBorder: OutlineInputBorder(
                      borderSide: Divider.createBorderSide(context),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ), border: OutlineInputBorder(
                      borderSide: Divider.createBorderSide(context),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  )),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Add your login logic here
                String email = _emailController.text;
                String password = _passwordController.text;
                // Implement your authentication logic
                print('Email: $email, Password: $password');
              },
              child: Text('Login',
              style: TextStyle(color: primaryColor),),
            ),
            SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                // Add navigation logic to the registration page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpScreen()),
                );
              },
              child: Text('Don\'t have an account? Register here.',
                  style: TextStyle(color: primaryColor)),
            ),
          ],
        ),
      ),
    );
  }
}


