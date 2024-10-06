import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:user_auth_app/services/auth_service.dart';
import 'package:user_auth_app/widget/custom_icon_button.dart';
import 'package:user_auth_app/widget/custom_login_button.dart';
import 'package:user_auth_app/widget/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() async {
    // Show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(child: CircularProgressIndicator());
      },
    );

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      Navigator.pop(context); 
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context); 

        if (e.code == 'user-not-found') {
          wrongEmailMessage();
        }  
        if (e.code == 'wrong-password') {
          wrongPasswordMessage();
        }
      }
    }

  void wrongEmailMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Text('Incorrect email, Please try again'),
        );
      },
    );
  }

  void wrongPasswordMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Text('Incorrect password, Please try again'),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              //header text
              const SizedBox(height: 130),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Welcome\nBack!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  )
                ),
              ),
              const SizedBox(height: 10),
              //sub text
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Enter your email address and password to get\naccess your account.',
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 14,
                  )
                ),
              ),
              const SizedBox(height: 40),
              CustomTextField(
                  hintText: 'Email',
                  obscureText: false,
                  controller: emailController),
              const SizedBox(height: 20),
              CustomTextField(
                  hintText: 'Password',
                  obscureText: true,
                  controller: passwordController),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.grey.shade700),
                ),
              ),
              const SizedBox(height: 20),
              LoginButton(onTap: signUserIn),
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                          thickness: 0.5, color: Colors.grey.shade500),
                    ),
                    Text(
                      'Or continue with',
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                    Expanded(
                      child: Divider(
                          thickness: 0.5, color: Colors.grey.shade500),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 180,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIconButton(
                      imagePath: 'assets/icons/google.png',
                      onTap: () => AuthService().signInWithGoogle(),
                    ),
                    CustomIconButton(
                      imagePath: 'assets/icons/apple-logo.png',
                      onTap: () => {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                    Text(
                      "Register now",
                      style: TextStyle(color: Colors.blue.shade500),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
