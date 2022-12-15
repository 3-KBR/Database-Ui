import 'package:flutter/material.dart';

//the needed varebails..............................................................
String status = "";
List<String> packages =<String>[""];
String selected = packages.first;




class CPackages extends StatefulWidget {
  const CPackages({Key? key}) : super(key: key);

  @override
  State<CPackages> createState() => _CPackages();
}

class _CPackages extends State<CPackages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(title: Text("Edit Packages", style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 40),),centerTitle: true,backgroundColor: Colors.purple,),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [

                //dropdown
                SizedBox(height: 20,),
                Text("Packages",style: TextStyle(fontSize: 20),),
                SingleChildScrollView(child: DropdownButton<String>(
                  value: selected,
                  onChanged: (String? value) {
                    setState(() {
                      selected = value!;
                    });
                  },
                  items: packages.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),),
                SizedBox(height: 20,),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Status',),
                  onChanged: (text){status = text;},
                ),

                SizedBox(height: 40,),
                SizedBox(
                  height: 60,
                  width: 200,
                  child: ElevatedButton(onPressed: () {
                    // Enter your code here what happen after submetting...............................................................................
                  }, child: Text("Receive Package",style: TextStyle(fontSize: 20),)),
                ),








              ],
            ),
          )),
    );
  }
}
