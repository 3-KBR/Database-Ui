import 'package:flutter/material.dart';
import 'Login.dart';
import 'Sign.dart';
import 'EReport.dart';
import 'EControl.dart';
import 'EPackages.dart';
import 'ECustomer.dart';
import 'EAddPackages.dart';
import 'EEditPackages.dart';
import 'ETracePackages.dart';
import 'EAddCustomer.dart';
import 'EEditCustomer.dart';
import 'ESendEmail.dart';
import 'CControl.dart';
import 'CPackages.dart';
import 'CSendPackage.dart';
import 'CUpdateInformation.dart';
import 'CPay.dart';
import 'EPaymentReport.dart';
import 'ETypeReport.dart';
import 'EViewCustomerPackages.dart';



void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        //main UI pages
        '/': (context) => Login(),
        '/0': (context) => Sign(),

        //Customer UI pages
        '/1': (context) => CControl(),
        '/2': (context) => CPackages(),
        '/3': (context) => CSendPackage(),
        '/4': (context) => CUpdateInformation(),
        '/5': (context) => CPay(),


        //Employee UI main
        '/6': (context) => EControl(),
        //Employee UI pages1
        '/7': (context) => EReport(),
        '/8': (context) => ETypeReport(),
        //'/9': (context) => ECLSReport(),
        '/10': (context) => EViewCustomerPackages(),
        //'/11': (context) => ELDDReport(),
        '/12': (context) => EPaymentReport(),
        //Employee UI pages2
        '/13': (context) => EPackages(),
        '/14': (context) => EAddPackages(),
        '/15': (context) => EEditPackages(),
        '/16': (context) => ETracePackages(),
        //Employee UI pages3
        '/17': (context) => ECustomers(),
        '/18': (context) => ESendEmail(),
        '/19': (context) => EEditCustomer(),
        '/20': (context) => EAddCustomer(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: '/10',
    );
  }
}
