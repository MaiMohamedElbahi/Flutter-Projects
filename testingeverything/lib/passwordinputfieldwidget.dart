import 'package:flutter/material.dart';

class passwordinputfieldwidget extends StatefulWidget {
final String hint;
final IconData icon;
  const passwordinputfieldwidget({super.key,
  required this.hint,
  required this.icon
  });

  @override
  State<passwordinputfieldwidget> createState() => _passwordinputfieldwidgetState();
}

class _passwordinputfieldwidgetState extends State<passwordinputfieldwidget> {
  bool Visible = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
              child: TextFormField(
                decoration: InputDecoration(
                  hint: Text(widget.hint, style: TextStyle(
                    color: const Color.fromARGB(255, 30, 23, 0),
                  ),
                  //textAlign: TextAlign.center,
                  ),
                  prefixIcon: Icon(widget.icon),
                  prefixIconColor: const Color.fromARGB(255, 56, 43, 2),

                  suffixIcon: TextButton(onPressed: () { setState(() {
                    Visible = !Visible;
                  });}, child: Icon( Visible? Icons.visibility : Icons.visibility_off),),
                  suffixIconColor: const Color.fromARGB(255, 56, 43, 2),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 228, 212, 160),
                  border: OutlineInputBorder(borderRadius:BorderRadius.circular(15) ),
                  
                ),
                obscureText: Visible,
              ),
            
    );
  }
}