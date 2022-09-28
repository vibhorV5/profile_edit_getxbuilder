import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile_edit_getxbuilder/Routes/routes.dart';
import 'package:profile_edit_getxbuilder/Screens/Home/View/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: Routes.routes,
      title: 'Profile Edit task',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const HomeScreen(),
    );
  }
}
