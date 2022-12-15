import 'package:flutter/material.dart';

//the needed varebails..............................................................
String email = "";
List<String> packages =<String>[""];
String selected = packages.first;




class ESendEmail extends StatefulWidget {
  const ESendEmail({Key? key}) : super(key: key);

  @override
  State<ESendEmail> createState() => _ESendEmail();
}

class _ESendEmail extends State<ESendEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(title: Text("Edit Packages", style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 40),),centerTitle: true,backgroundColor: Colors.purple,),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [

                //get info by email
                SizedBox(height: 20,),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Email',),
                  onChanged: (text){email = text;},
                ),
                SizedBox(height: 40,),
                SizedBox(
                  height: 60,
                  width: 160,
                  child: ElevatedButton(onPressed: () {
                    // Enter your code here what happen after submetting...............................................................................
                  }, child: Text("Get Packages",style: TextStyle(fontSize: 20),)),
                ),

                //get info by email
                SizedBox(height: 20,),





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



                SizedBox(height: 40,),
                SizedBox(
                  height: 60,
                  width: 160,
                  child: ElevatedButton(onPressed: () {
                    // Enter your code here what happen after submetting...............................................................................
                  }, child: Text("Send Email",style: TextStyle(fontSize: 20),)),
                ),








              ],
            ),
          )),
    );
  }
}
