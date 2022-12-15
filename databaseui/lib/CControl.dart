import 'package:flutter/material.dart';

//the needed varebails..............................................................



class CControl extends StatefulWidget {
  const CControl({Key? key}) : super(key: key);

  @override
  State<CControl> createState() => _CControl();
}

class _CControl extends State<CControl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(title: Text("Customer Control", style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 30),),centerTitle: true,),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [


                SizedBox(
                  height: 80,
                  width: 300,
                  child: ElevatedButton(onPressed: () {
                    // Enter your code here what happen after submetting...............................................................................
                    Navigator.pushNamed(context, "/2");
                  }, child: Text("Your Packages",style: TextStyle(fontSize: 20),)),
                ),
                SizedBox(height: 40,),
                SizedBox(
                  height: 80,
                  width: 300,
                  child: ElevatedButton(onPressed: () {
                    // Enter your code here what happen after submetting...............................................................................
                    Navigator.pushNamed(context, "/3");
                  }, child: Text("Send Package",style: TextStyle(fontSize: 20),)),
                ),
                SizedBox(height: 40,),
                SizedBox(
                  height: 80,
                  width: 300,
                  child: ElevatedButton(onPressed: () {
                    // Enter your code here what happen after submetting...............................................................................
                    Navigator.pushNamed(context, "/4");
                  }, child: Text("Update Information",style: TextStyle(fontSize: 20),)),
                ),
                SizedBox(height: 40,),
                SizedBox(
                  height: 80,
                  width: 300,
                  child: ElevatedButton(onPressed: () {
                    // Enter your code here what happen after submetting...............................................................................
                    Navigator.pushNamed(context, "/5");
                  }, child: Text("Pay for Packages",style: TextStyle(fontSize: 20),)),
                ),
                SizedBox(height: 100,),
                SizedBox(
                  height: 80,
                  width: 300,
                  child: ElevatedButton(onPressed: () {
                    // Enter your code here what happen after submetting...............................................................................
                    Navigator.pushNamed(context, "/");
                  }, child: Text("Logout",style: TextStyle(fontSize: 20),)),
                ),



              ],
            ),
          )),
    );
  }
}
