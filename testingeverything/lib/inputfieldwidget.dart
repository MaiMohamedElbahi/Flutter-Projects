import 'package:flutter/material.dart';

class inputfieldwidget extends StatelessWidget {
final String hint;
final IconData icon;
  const inputfieldwidget({super.key,
  required this.hint,
  required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
              child: TextFormField(
                decoration: InputDecoration(
                  hint: Text(hint, style: TextStyle(
                    color: const Color.fromARGB(255, 30, 23, 0),
                  ),
                  //textAlign: TextAlign.center,
                  ),
                  prefixIcon: Icon(icon),
                  prefixIconColor: const Color.fromARGB(255, 56, 43, 2),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 228, 212, 160),
                  border: OutlineInputBorder(borderRadius:BorderRadius.circular(15) ),
                ),
              ),
            
    );
  }
}