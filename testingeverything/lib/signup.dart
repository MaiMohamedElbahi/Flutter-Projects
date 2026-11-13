import 'package:flutter/material.dart';
import 'package:testingeverything/login.dart';
import 'inputfieldwidget.dart';
import 'passwordinputfieldwidget.dart';
import 'homepage.dart';

class Signup extends StatefulWidget {
  const new({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 244, 242, 227),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Sign Up", style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w900,
              color: const Color.fromARGB(255, 56, 43, 2),
            ),),
            SizedBox(height: 15,),
            Text("Create your account", style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w100,
              color: const Color.fromARGB(255, 56, 43, 2),
            ),),
            SizedBox(height: 40,),
            Center(
              child: inputfieldwidget(hint: "Username",icon: Icons.person,)
            ),
            SizedBox(height: 10,),
            Center(
              child: inputfieldwidget(hint: "Email",icon: Icons.email,)
            ),
            SizedBox(height: 10,),
            Center(
              child: passwordinputfieldwidget(hint: "Password",icon: Icons.lock,)
            ),
            SizedBox(height: 10,),
            Center(
              child: passwordinputfieldwidget(hint: "Confirm Password",icon: Icons.lock,)
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
              ), child: Text("Sign Up", style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w300,
                color: const Color.fromARGB(255, 228, 212, 160),
              ),)
              ),
            ),
            SizedBox(height: 30,),
            SizedBox(
              width: 400,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 3,
                      color:  const Color.fromARGB(255, 56, 43, 2),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Text("Or",style: TextStyle(color:  const Color.fromARGB(255, 56, 43, 2), fontSize: 20, fontWeight: FontWeight.bold),),
                  ),
                  Expanded(
                    child: Container(
                      height: 3,
                      color:  const Color.fromARGB(255, 56, 43, 2),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            SizedBox(
              width: 400,height: 45,
              child: FilledButton(onPressed: (){},
              style: FilledButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 228, 212, 160),
                side: BorderSide(
                  color: const Color.fromARGB(255, 56, 43, 2),
                ),
                shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(15))
              ), child: Text("Sign in with Google", style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w300,
                color: const Color.fromARGB(255, 56, 43, 2),
              ),)
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: SizedBox(
                
                width: 340,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Already have an account?",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w100,
                color: const Color.fromARGB(255, 82, 72, 38),
              ),),
              SizedBox(width: 10,),
              TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));}, child: Text("Login",style: TextStyle(
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