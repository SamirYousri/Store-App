import 'package:flutter/material.dart';
import 'package:store/pages/homePage.dart';
import 'package:store/pages/updateProductWidget.dart';

void main() {
  runApp(StoreApp());
}

class StoreApp extends StatelessWidget {
  StoreApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.id: (context) => HomePage(),
        UpdateProductWidget.id: (context) => UpdateProductWidget(),
      },
      initialRoute: HomePage.id,
    );
  }
}
