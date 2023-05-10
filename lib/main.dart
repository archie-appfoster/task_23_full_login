import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:to_do/happy.dart';
import 'package:to_do/veryhappy.dart';

import 'Home.dart';


void main() {

  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Login(),
      child : GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),


          home:(HomePage()),




      ));
  }
}
