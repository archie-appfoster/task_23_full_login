import 'dart:core';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:to_do/happy.dart';
import 'package:to_do/veryhappy.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller= TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    return Consumer<Login>(
      builder: ( context, log,  child) {
        return
        Scaffold(
          appBar: AppBar(title: Text("login ")),
          body: Column(

              children: [
                SizedBox(height: 25,),
                Text("Email", style: TextStyle(fontSize: 25,
                    fontWeight: FontWeight.bold),),
                SizedBox(height: 25,),
                Container(
                  color: Colors.pink[200],
                  child: TextField(
                    controller: emailcontroller,
                    decoration: InputDecoration(
                      hintText: "Enter email",
                      hintStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(

                      ),

                    ),
                  ),
                ),
                SizedBox(height: 25,),
                Text("Password", style: TextStyle(fontSize: 25,
                    fontWeight: FontWeight.bold),),
                SizedBox(height: 25,),
                Container(
                  width: 450,
                  color: Colors.pink[200],
                  child: TextField(
                    controller: passwordcontroller,
                    decoration: InputDecoration(
                        hintText: "Enter Password",
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder()
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                InkWell(
                  onTap: () async {
                    final SharedPreferences prefs = await SharedPreferences.getInstance();
                     bool? b =  await prefs.getBool('set');
                     if(b == false){

                      log.update(emailcontroller.text.toString(), passwordcontroller.text.toString());}
                     else{
                       Get.to(bird());
                     }

                  },
                  child: Container(

                      width: double.infinity,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.pink[200],
                      ),
                      child: Center(
                          child: Text("SUBMIT", style: TextStyle(fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),))
                  ),
                )
              ]),
        );
      } );
  }
}

