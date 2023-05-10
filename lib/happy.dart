import 'dart:convert';
import 'veryhappy.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends ChangeNotifier {
  void update(String Email, String Password) async {
    try {
      Response response = await post(
          Uri.parse("https://reqres.in/api/login"),
          body: {
            'email': Email,
            'password': Password
          });
      if (response.statusCode == 200) {
        Get.to(bird());


        var data = jsonDecode(response.body.toString());
        print(data['token']);
        print('Login successfully');
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setBool('set', true);





      } else {
        print('failed');
      }
    } catch (e) {
      print(e.toString());
    }
    notifyListeners();
  }





}


