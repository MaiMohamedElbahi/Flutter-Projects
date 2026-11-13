import 'package:flutter/material.dart';
import 'inputfieldwidget.dart';
import 'passwordinputfieldwidget.dart';
import 'homepage.dart';
class Login extends StatefulWidget {
  const new({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 244, 242, 227),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("images/Screenshot 2026-11-13 114521.png", width: 450,),
            SizedBox(height: 10,),
            Text("Welcome back", style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w900,
              color: const Color.fromARGB(255, 56, 43, 2),
            ),),
            SizedBox(height: 5,),
            Text("Enter your credintials to login", style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w100,
              color: const Color.fromARGB(255, 56, 43, 2),
            ),),
            SizedBox(height: 40,),
            
            Center(
              child: inputfieldwidget(hint: "Email",icon: Icons.email,)
            ),
            SizedBox(height: 10,),
            Center(
              child: passwordinputfieldwidget(hint: "Password",icon: Icons.lock,)
            ),
            SizedBox(height: 30,),
            SizedBox(
              width: 400,height: 45,
              child: FilledButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));
              },
              style: FilledButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 56, 43, 2),
                shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(15))
              ), child: Text("Login", style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w300,
                color: const Color.fromARGB(255, 228, 212, 160),
              ),)
              ),
            ),
            SizedBox(height: 30,),
            SizedBox(
              width: 400,
              child: TextButton(onPressed: (){}, child: Text("Forgot password?",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w900,
                color: const Color.fromARGB(255, 56, 43, 2),
              ),))
            ),
            SizedBox(height: 20,),
            Center(
              child: SizedBox(
                
                width: 340,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w100,
                color: const Color.fromARGB(255, 82, 72, 38),
              ),),
              SizedBox(width: 10,),
              TextButton(onPressed: (){Navigator.pop(context);}, child: Text("Sign Up",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w900,
                color: const Color.fromARGB(255, 56, 43, 2),
              ),))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}