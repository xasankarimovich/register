import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lessons_textfeildlar/register/logins_screen.dart';

import 'home_screen/home_screen.dart';
void main(){
  runApp(MyRegister());

}
class MyRegister extends StatelessWidget {
  const MyRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

