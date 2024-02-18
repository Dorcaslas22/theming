import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({super.key, this.textButton, this.onPressed});
  final String? textButton;
  final Widget? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 0.0,
        horizontal: 24.0,
      ),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: (){
          Navigator.push(context,
            MaterialPageRoute(
                builder: (e) => onPressed!,
            ),
          );
        },
        child:  Text(textButton!,
            style: const TextStyle(
            fontSize: 18.0,
        ),
        ),
      ),
    );
  }
}
