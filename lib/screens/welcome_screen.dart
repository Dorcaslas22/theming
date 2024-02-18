

import 'package:flutter/material.dart';
import 'package:theming/screens/login_screen.dart';
import 'package:theming/screens/signup_screen.dart';
import 'package:theming/widgets/my_elevated_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
             padding: const EdgeInsets.all(8.0),
             child: const Image(image: AssetImage("assets/images/b_2.jpg"),),
          ),),

          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Text('Welcome to Domann Bank',
               style: TextStyle(
                 fontSize: 20,
                 fontWeight: FontWeight.normal,
                 color: Colors.black38.withOpacity(0.6),
               ),
              ),
          ),),

          const Expanded(
            flex: 2,
              child: Column(
                children: [
                MyElevatedButton(
                textButton: 'Login',
                 onPressed: LoginScreen(),
              ),
                SizedBox(
                  height: 20.0,
                ),
                MyElevatedButton(
                textButton: 'Sign up',
                onPressed: SignupScreen(),
              ),
            ],
          )),
        ],
      ),),
    );
  }
}
