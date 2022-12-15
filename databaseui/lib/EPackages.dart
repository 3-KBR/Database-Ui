import 'package:flutter/material.dart';

//the needed varebails..............................................................



class EPackages extends StatefulWidget {
  const EPackages({Key? key}) : super(key: key);

  @override
  State<EPackages> createState() => _EPackages();
}

class _EPackages extends State<EPackages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(title: Text("Packages", style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 40),),centerTitle: true,),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [


                SizedBox(
                  height: 80,
                  width: 300,
                  child: ElevatedButton(onPressed: () {
                    // Enter your code here what happen after submetting...............................................................................
                    Navigator.pushNamed(context, "/14");
                  }, child: Text("Add Package",style: TextStyle(fontSize: 20),)),
                ),
                SizedBox(height: 40,),
                SizedBox(
                  height: 80,
                  width: 300,
                  child: ElevatedButton(onPressed: () {
                    // Enter your code here what happen after submetting...............................................................................
                    Navigator.pushNamed(context, "/15");
                  }, child: Text("Edit Package",style: TextStyle(fontSize: 20),)),
                ),
                SizedBox(height: 40,),
                SizedBox(
                  height: 80,
                  width: 300,
                  child: ElevatedButton(onPressed: () {
                    // Enter your code here what happen after submetting...............................................................................
                    Navigator.pushNamed(context, "/16");
                  }, child: Text("Trace Package",style: TextStyle(fontSize: 20),)),
                ),





              ],
            ),
          )),
    );
  }
}
