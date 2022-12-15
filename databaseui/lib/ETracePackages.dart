import 'package:flutter/material.dart';

//the needed varebails..............................................................
String id = "";
String barcode = "";
String status = "";



class ETracePackages extends StatefulWidget {
  const ETracePackages({Key? key}) : super(key: key);

  @override
  State<ETracePackages> createState() => _ETracePackages();
}

class _ETracePackages extends State<ETracePackages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(title: Text("Trace Packages", style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 40),),centerTitle: true,backgroundColor: Colors.green,),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [

                //get info by id and barcode
                SizedBox(height: 20,),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Package Id',),
                  onChanged: (text){id = text;},
                ),
                SizedBox(height: 20,),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Package Barcode',),
                  onChanged: (text){barcode = text;},
                ),
                SizedBox(height: 40,),
                SizedBox(
                  height: 60,
                  width: 160,
                  child: ElevatedButton(onPressed: () {
                    // Enter your code here what happen after submetting...............................................................................
                  }, child: Text("Get Info",style: TextStyle(fontSize: 20),)),
                ),

                //edit
                SizedBox(height: 40,),
                Text("Status"),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: status,),
                  onChanged: (text){status = text;},
                ),





              ],
            ),
          )),
    );
  }
}
