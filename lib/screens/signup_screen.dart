import 'package:flutter/material.dart';
import 'package:theming/screens/login_screen.dart';

import '../widgets/my_elevated_button.dart';
import '../widgets/my_text_field.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
             padding: const EdgeInsets.all(8.0),
             child: const Text(''),
          ),),
          Expanded(
            flex: 1,
            child: Container(
             padding: const EdgeInsets.all(8.0),
             child:  Text('Sign up',
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),),
          Expanded(
            flex: 5,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                  const MyTextField(
                  fieldText: 'Username',
                  icon: Icons.perm_identity,
                ),
                  const MyTextField(
                  fieldText: 'Email',
                  icon: Icons.email_outlined,
                ),
                   const MyTextField(
                  fieldText: 'Password',
                  icon: Icons.lock_open_outlined,
                ),
                   const MyTextField(
                  fieldText: 'Confirm password',
                  icon: Icons.lock_open_outlined,
                ),
                    const SizedBox(
                      height: 40.0,
                    ),
                   const MyElevatedButton(
                     textButton: 'Sign up',
                   ),
                    const SizedBox(
                      height: 20.0,
                    ),
                   TextButton(
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(
                        builder: (e) => const LoginScreen(),
                      ),
                    );
                  },
                  child: const Text('Already have an account?Login'),
                ),
                            ],
                          ),
              )),
        ],
      ),),
    );
  }
}
