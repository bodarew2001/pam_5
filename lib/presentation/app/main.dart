import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widget/button_bar.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home:   ButtonBor(),
      theme: ThemeData(primarySwatch: Colors.blue));


  }
}