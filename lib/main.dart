import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'di/di.dart';
import 'presentation/app/widget/button_bar.dart';

void main() async{
  await initDi();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: ButtonBor(),
    );
  }
}
