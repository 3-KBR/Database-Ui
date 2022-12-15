import 'package:flutter/material.dart';

//the needed varebails..............................................................



class ECustomers extends StatefulWidget {
  const ECustomers({Key? key}) : super(key: key);

  @override
  State<ECustomers> createState() => _ECustomers();
}

class _ECustomers extends State<ECustomers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(title: Text("Customers", style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 40),),centerTitle: true,backgroundColor: Colors.purple,),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [


                SizedBox(
                  height: 80,
                  width: 300,
                  child: ElevatedButton(onPressed: () {
                    // Enter your code here what happen after submetting...............................................................................
                    Navigator.pushNamed(context, "/20");
                  }, child: Text("Add Customer",style: TextStyle(fontSize: 20),)),
                ),
                SizedBox(height: 40,),
                SizedBox(
                  height: 80,
                  width: 300,
                  child: ElevatedButton(onPressed: () {
                    // Enter your code here what happen after submetting...............................................................................
                    Navigator.pushNamed(context, "/19");
                  }, child: Text("Edit Customer",style: TextStyle(fontSize: 20),)),
                ),
                SizedBox(height: 40,),
                SizedBox(
                  height: 80,
                  width: 300,
                  child: ElevatedButton(onPressed: () {
                    // Enter your code here what happen after submetting...............................................................................
                    Navigator.pushNamed(context, "/18");
                  }, child: Text("Send Email",style: TextStyle(fontSize: 20),)),
                ),





              ],
            ),
          )),
    );
  }
}
