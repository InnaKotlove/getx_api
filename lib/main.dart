
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/modules/intro/intro_binding.dart';
import 'package:getx_api/modules/intro/intro_screen.dart';

void main() {
  runApp(
    //34b7eda7d2msh465aaae5b70ea14p199c29jsnec4b2335e832
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const IntroScreen(),
      initialBinding: IntroBinding(),
    ),
  );
}