import 'package:flutter/material.dart';

//the needed varebails..............................................................
String id = "";
String barcode = "";
String weight = "";
String insuranceAmount = "";
String country = "";
String reigon = "";
String city = "";
String zipcode = "";
String height = "";
String width = "";
String length = "";
String deliverDate = "";
String category = "";


class EEditPackages extends StatefulWidget {
  const EEditPackages({Key? key}) : super(key: key);

  @override
  State<EEditPackages> createState() => _EEditPackages();
}

class _EEditPackages extends State<EEditPackages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(title: Text("Edit Packages", style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 40),),centerTitle: true,backgroundColor: Colors.green,),
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
                SizedBox(height: 20,),
                Text("weight"),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: weight,),
                  onChanged: (text){weight = text;},
                ),
                SizedBox(height: 20,),
                Text("insurance amount"),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: insuranceAmount),
                  onChanged: (text){insuranceAmount = text;},
                ),
                SizedBox(height: 20,),
                Text("country"),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: country,),
                  onChanged: (text){country = text;},
                ),
                SizedBox(height: 20,),
                Text("reigon"),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: reigon,),
                  onChanged: (text){reigon = text;},
                ),
                SizedBox(height: 20,),
                Text("city"),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: city,),
                  onChanged: (text){city = text;},
                ),
                SizedBox(height: 20,),
                Text("zip code"),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: zipcode,),
                  onChanged: (text){zipcode = text;},
                ),
                SizedBox(height: 20,),
                Text("height"),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: height,),
                  onChanged: (text){height = text;},
                ),
                SizedBox(height: 20,),
                Text("width"),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: width,),
                  onChanged: (text){width = text;},
                ),
                SizedBox(height: 20,),
                Text("lenght"),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: length,),
                  onChanged: (text){length = text;},
                ),
                SizedBox(height: 20,),
                Text("delivery date"),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: deliverDate,),
                  onChanged: (text){deliverDate = text;},
                ),
                SizedBox(height: 20,),
                Text("package category"),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: category,),
                  onChanged: (text){category = text;},
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
