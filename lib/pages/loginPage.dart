import 'package:flutter/material.dart';
import '../components/button.dart';
import '../components/myTextField.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    // text editing controllers
    final emailController = TextEditingController(text: "jimmy@hotmail.com");
    final passwordController = TextEditingController(text: "12345678");
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // ___Logo___
              const Image(image: AssetImage('assets/logo.jpeg')),

              //____Email Input___
              MyTextField(
                controller: emailController,
                hintText: 'example@gmail.com',
                labelText: "email",
                obscureText: false,
              ),

              const SizedBox(height: 10),

              //_____Password Input____
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                labelText: "password",
                obscureText: true,
              ),

              const SizedBox(height: 10),

              const Text("forget password?",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF6D6C6C),
                  )),

              const SizedBox(height: 20),

              //Login Button
              const Button(),

              const SizedBox(height: 10),

              const Text("or",
                  style: TextStyle(fontSize: 20, color: Color(0xFF6D6C6C))),

              // Social Media Button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  IconButton(
                    onPressed: null,
                    icon: Icon(Icons.map),
                  ),
                  IconButton(
                    onPressed: null,
                    icon: Icon(Icons.facebook),
                  )
                ],
              ),

              const SizedBox(height: 10),

              const Text(
                "Don't have an account? Sing Up",
                style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 231, 106, 106),
                    decoration: TextDecoration.underline),
              )
            ],
          ),
        ),
      ),
    );
  }
}
