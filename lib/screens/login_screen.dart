import 'package:flutter/material.dart';
import 'package:theming/screens/signup_screen.dart';
import 'package:theming/widgets/my_elevated_button.dart';
import 'package:theming/widgets/my_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
            padding: const EdgeInsets.all(8.0),
            child: const Image(image: AssetImage("assets/images/b_1.jpg"),),
          ),),

          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child:  Text('Login',
                  style: Theme.of(context).textTheme.displayLarge,
              ),
          ),),
           Expanded(
             flex: 4,
               child: SingleChildScrollView(
                 child: Column(
                  children: [
                      const MyTextField(
                        fieldText: 'Email',
                        icon: Icons.email_outlined,
                      ),
                      const MyTextField(
                        fieldText: 'Password',
                        icon: Icons.lock_open_outlined,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                            'Forgot password?',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: Colors.red,
                            ),
                        ),
                               ),
                      const SizedBox(
                      height: 30.0,
                    ),
                      const MyElevatedButton(
                  textButton: 'Login',
                               ),
                      const SizedBox(
                      height: 15.0,
                    ),
                      TextButton(
                       onPressed: () {
                         Navigator.push(context,
                           MaterialPageRoute(
                             builder: (e) => const SignupScreen(),
                             ),
                         );
                       },
                       child:  const Text(
                           'Don\'t have an account?Sign up',
                         ),
                       ),
                             ],
                           ),
               )),
        ],
      ),),
    );
  }
}
