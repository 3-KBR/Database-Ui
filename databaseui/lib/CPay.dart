import 'package:flutter/material.dart';

//the needed varebails..............................................................
String cost = "5SR";
String cardNum = "";
String nameOnCard = "";
String civ = "";

List<String> packages =<String>[""];
String selected = packages.first;




class CPay extends StatefulWidget {
  const CPay({Key? key}) : super(key: key);

  @override
  State<CPay> createState() => _CPay();
}

class _CPay extends State<CPay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(title: Text("Payment", style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 30),),centerTitle: true,),
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
                Text(cost),
                SizedBox(height: 20,),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Card Number',),
                  onChanged: (text){cardNum = text;},
                ),
                SizedBox(height: 20,),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Name on The Card',),
                  onChanged: (text){nameOnCard = text;},
                ),
                SizedBox(height: 20,),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'CIV',),
                  onChanged: (text){civ = text;},
                ),

                SizedBox(height: 40,),
                SizedBox(
                  height: 60,
                  width: 200,
                  child: ElevatedButton(onPressed: () {
                    // Enter your code here what happen after submetting...............................................................................
                  }, child: Text("Pay",style: TextStyle(fontSize: 20),)),
                ),








              ],
            ),
          )),
    );
  }
}
