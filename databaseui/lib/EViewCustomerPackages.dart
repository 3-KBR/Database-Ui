import 'package:flutter/material.dart';

//the needed varebails..............................................................
String customerId = "";
List<List<String>> packagesList = <List<String>>[];




class EViewCustomerPackages extends StatefulWidget {
  const EViewCustomerPackages({Key? key}) : super(key: key);

  @override
  State<EViewCustomerPackages> createState() => _EViewCustomerPackages();
}

class _EViewCustomerPackages extends State<EViewCustomerPackages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(title: Text("Payment Report", style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 30),),centerTitle: true,),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [


                SizedBox(height: 20,),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'To Date',),
                  onChanged: (text){customerId = text;},
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 60,
                  width: 160,
                  child: ElevatedButton(onPressed: () {
                    // Enter your code here what happen after submetting...............................................................................
                  }, child: Text("Get Info",style: TextStyle(fontSize: 20),)),
                ),
                SizedBox(height: 60,),

                for(List<String> i in packagesList) Container(width: 1000,margin: EdgeInsets.only(bottom: 40,left: 10,right: 10),color: Colors.grey, child: Column(children: [Text("Package ID:",style: TextStyle(fontSize: 30),),Text(i[0],style: TextStyle(fontSize: 30)),SizedBox(height: 20,),Text("BarCode",style: TextStyle(fontSize: 30)),Text(i[1],style: TextStyle(fontSize: 30)),SizedBox(height: 20,),Text("Country",style: TextStyle(fontSize: 30)),Text(i[2],style: TextStyle(fontSize: 30)),SizedBox(height: 20,),Text("Reigon",style: TextStyle(fontSize: 30)),Text(i[3],style: TextStyle(fontSize: 30)),SizedBox(height: 20,),Text("City",style: TextStyle(fontSize: 30)),Text(i[4],style: TextStyle(fontSize: 30)),SizedBox(height: 20,),Text("Status",style: TextStyle(fontSize: 30)),Text(i[5],style: TextStyle(fontSize: 30)),SizedBox(height: 20,),Text("Delivery Date",style: TextStyle(fontSize: 30)),Text(i[6],style: TextStyle(fontSize: 30))],),),


              ],
            ),
          )),
    );
  }
}
