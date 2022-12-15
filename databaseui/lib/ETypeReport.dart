import 'package:flutter/material.dart';

//the needed varebails..............................................................
String fromDate = "";
String toDate = "";
String regular = "";
String fragile = "";
String liquid = "";
String chemical = "";



class ETypeReport extends StatefulWidget {
  const ETypeReport({Key? key}) : super(key: key);

  @override
  State<ETypeReport> createState() => _ETypeReport();
}

class _ETypeReport extends State<ETypeReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(title: Text("Type Report", style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 30),),centerTitle: true,backgroundColor: Colors.purple,),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [

                //get info by id and barcode
                SizedBox(height: 20,),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'From Date',),
                  onChanged: (text){fromDate = text;},
                ),
                SizedBox(height: 20,),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'To Date',),
                  onChanged: (text){toDate = text;},
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 60,
                  width: 160,
                  child: ElevatedButton(onPressed: () {
                    // Enter your code here what happen after submetting...............................................................................
                  }, child: Text("Get Info",style: TextStyle(fontSize: 20),)),
                ),

                //edit
                SizedBox(height: 60,),
                Text("Number of Regular:",style: TextStyle(fontSize: 25),),
                Text(regular,style: TextStyle(fontSize: 20)),
                SizedBox(height: 20,),
                Text("Number of Fragile:",style: TextStyle(fontSize: 25)),
                Text(fragile,style: TextStyle(fontSize: 20)),
                SizedBox(height: 20,),
                Text("Number of Liquid:",style: TextStyle(fontSize: 25)),
                Text(liquid,style: TextStyle(fontSize: 20)),
                SizedBox(height: 20,),
                Text("Number of Chemical:",style: TextStyle(fontSize: 25)),
                Text(chemical,style: TextStyle(fontSize: 20)),






              ],
            ),
          )),
    );
  }
}
