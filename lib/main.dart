import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

///

import 'package:food_mobile_app/pages/spalas_screen.dart';
import 'package:food_mobile_app/bindings/all_bringings.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Mobile App UI Design',
      initialBinding: MyBindings(),
      home: const SplashPage(),
    );
  }
}