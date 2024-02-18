import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key, this.fieldText, this.icon});
  final String? fieldText;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(
        vertical: 0.0,
        horizontal: 20.0,
      ),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                hintText: fieldText,
              hintStyle: TextStyle(
                color: Colors.black38.withOpacity(0.4),
              ),
              fillColor: Colors.grey.withOpacity(0.1),
              filled: true,
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.black12, // Default border color
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.black12, // Default border color
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.indigo.shade600, // Focused border color
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              prefixIcon: Icon(icon,),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
