import 'package:flutter/material.dart';

//the needed varebails..............................................................
List<List<String>> packagesList = <List<String>>[];




class EPaymentReport extends StatefulWidget {
  const EPaymentReport({Key? key}) : super(key: key);

  @override
  State<EPaymentReport> createState() => _EPaymentReport();
}

class _EPaymentReport extends State<EPaymentReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(title: Text("Payment Report", style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 30),),centerTitle: true,),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [

                for(List<String> i in packagesList) Container(width: 1000,margin: EdgeInsets.only(bottom: 40,left: 10,right: 10),color: Colors.grey, child: Column(children: [Text("Email:",style: TextStyle(fontSize: 30),),Text(i[0],style: TextStyle(fontSize: 30)),SizedBox(height: 20,),Text("Package ID:",style: TextStyle(fontSize: 30)),Text(i[1],style: TextStyle(fontSize: 30))],),),





              ],
            ),
          )),
    );
  }
}
