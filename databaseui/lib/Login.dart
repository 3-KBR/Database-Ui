import 'package:flutter/material.dart';

//the needed varebails..............................................................
String email = "";
String password = "";


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(title: Text("Login", style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 40),),centerTitle: true,),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [

                SizedBox(height: 20,),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Password',),
                  onChanged: (text){email = text;},
                ),
                SizedBox(height: 20,),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Password',),
                  onChanged: (text){password = text;},
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 60,
                  width: 160,
                  child: ElevatedButton(onPressed: () {
                    // Enter your code here what happen after submetting...............................................................................
                    Navigator.pushNamed(context, "/6");
                  }, child: Text("Submet",style: TextStyle(fontSize: 20),)),
                ),
                SizedBox(height: 10,),
                GestureDetector(child: Text("Register"), onTap: (){Navigator.pushNamed(context, "/0");})



              ],
            ),
          )),
    );
  }
}
