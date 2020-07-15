import 'package:flutter/material.dart';
import 'package:new_struct_bloc/screens/home_screen.dart';
import 'package:new_struct_bloc/untils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First App',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(255, 255, 255, 1),
        primaryColor: appbarBgColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: Color(0xffffffff)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
