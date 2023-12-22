import 'package:flutter/material.dart';
import 'package:veranco/utils/colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final inputborder = OutlineInputBorder(
        borderSide: Divider.createBorderSide(context),
        borderRadius: BorderRadius.all(Radius.circular(10.0))
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _fullNameController,
              decoration: InputDecoration(labelText: 'Name', hintText: 'Enter full name',
              fillColor: primaryColor, focusedBorder: inputborder, border: inputborder),
              keyboardType: TextInputType.text,
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _fullNameController,
              decoration: InputDecoration(labelText: 'Email', hintText: 'Enter email id',
                  fillColor: primaryColor, focusedBorder: inputborder, border: inputborder),
              keyboardType: TextInputType.text,
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _fullNameController,
              decoration: InputDecoration(labelText: 'Password', hintText: 'Create a password',
                  fillColor: primaryColor, focusedBorder: inputborder, border: inputborder),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _fullNameController,
              decoration: InputDecoration(labelText: 'Confirm Password',
                  fillColor: primaryColor, focusedBorder: inputborder, border: inputborder),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Add your signup logic here
                String fullName = _fullNameController.text;
                String email = _emailController.text;
                String password = _passwordController.text;
                // Implement your user registration logic
                print('Full Name: $fullName, Email: $email, Password: $password');
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
