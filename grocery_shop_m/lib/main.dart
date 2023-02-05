import 'package:flutter/material.dart';
import 'package:grocery_shop_m/model/cart_model.dart';
import 'package:provider/provider.dart';
import 'pages/Intro_Page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => cartmodel()),
      child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    ),
    );
  }
}
