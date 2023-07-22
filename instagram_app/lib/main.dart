
import 'package:flutter/services.dart';
import 'package:instagram_app/screen/app_screen.dart';
import 'package:flutter/material.dart';

void main(){
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarBrightness: Brightness.dark
  ));
  runApp(const instagramapp());
}

// ignore: camel_case_types
class instagramapp extends StatelessWidget {
  const instagramapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
     theme: ThemeData(
      primaryColor: Colors.grey,
     ),
     home: const AppScreen(),
    );
  }
}