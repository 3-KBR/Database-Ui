import 'package:flutter/material.dart';

//the needed varebails..............................................................
String email = "";
List<String> packages =<String>[""];
String selected = packages.first;




class CSendPackage extends StatefulWidget {
  const CSendPackage({Key? key}) : super(key: key);

  @override
  State<CSendPackage> createState() => _CSendPackage();
}

class _CSendPackage extends State<CSendPackage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(title: Text("Send Package", style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 30),),centerTitle: true,),
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
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Receiver Email',),
                  onChanged: (text){email = text;},
                ),

                SizedBox(height: 40,),
                SizedBox(
                  height: 60,
                  width: 200,
                  child: ElevatedButton(onPressed: () {
                    // Enter your code here what happen after submetting...............................................................................
                  }, child: Text("Send Package",style: TextStyle(fontSize: 20),)),
                ),








              ],
            ),
          )),
    );
  }
}
