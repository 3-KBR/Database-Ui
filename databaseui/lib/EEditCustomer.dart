import 'package:flutter/material.dart';

//the needed varebails..............................................................
String email = "";
String name = "";
String country = "";
String city = "";
String reigon = "";
String zipcode = "";



class EEditCustomer extends StatefulWidget {
  const EEditCustomer({Key? key}) : super(key: key);

  @override
  State<EEditCustomer> createState() => _EEditCustomer();
}

class _EEditCustomer extends State<EEditCustomer> {
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
                  }, child: Text("Get Info",style: TextStyle(fontSize: 20),)),
                ),

                //edit
                SizedBox(height: 20,),
                Text("name"),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: name,),
                  onChanged: (text){name = text;},
                ),
                SizedBox(height: 20,),
                Text("country"),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: country),
                  onChanged: (text){country = text;},
                ),
                SizedBox(height: 20,),
                Text("city"),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: city,),
                  onChanged: (text){city = text;},
                ),
                SizedBox(height: 20,),
                Text("reigon"),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: reigon,),
                  onChanged: (text){reigon = text;},
                ),
                SizedBox(height: 20,),
                Text("zipcode"),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: zipcode,),
                  onChanged: (text){zipcode = text;},
                ),
                SizedBox(height: 40,),



                //apply and delete buttons
                SizedBox(
                  height: 60,
                  width: 200,
                  child: ElevatedButton(onPressed: () {
                    // Enter your code here what happen after submetting...............................................................................
                  }, child: Text("Apply Edit",style: TextStyle(fontSize: 20),)),
                ),
                SizedBox(height: 40,),
                SizedBox(
                  height: 60,
                  width: 200,
                  child: ElevatedButton(onPressed: () {
                    // Enter your code here what happen after submetting...............................................................................
                  }, child: Text("Delete Package",style: TextStyle(fontSize: 20),)),
                ),
                SizedBox(height: 40,),




              ],
            ),
          )),
    );
  }
}
