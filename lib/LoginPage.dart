import 'package:flutter/material.dart';
import 'package:flutter_loginpage/components/MyTextField.dart';
import 'package:flutter_loginpage/components/MyButton.dart';
import 'package:flutter_loginpage/components/Square_title.dart'; // Ensure the correct path

import 'package:flutter_loginpage/components/signuppage.dart'; // Import the SignUpPage

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {
    // Add your sign-in logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25
                ),
              ),
              Icon(
                Icons.lock,
                size: 140,
              ),
              Text(
                'Please Login',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 25),
              MyTextField(
                controller: usernameController,
                hintText: 'User Name',
                obscureText: false,
              ),
              const SizedBox(height: 10),
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password',
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 86, 22, 17),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              MyButton(
                onTap: signUserIn,
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: const Text('or Continue with'),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTitles(imagepath: 'lib/images/Google.png'),
                  const SizedBox(width: 10),
                  SquareTitles(imagepath: 'lib/images/apple.png'),
                ],
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a Member?'),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Signuppage()),
                      );
                    },
                    child: Text(
                      'Register now',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
