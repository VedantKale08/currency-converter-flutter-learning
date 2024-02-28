import 'package:currency_converter/currency_convertor_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
 
//Types of widgets
//1.Stateless widgets
//2.Stateful widgets
//3.Inherited widgets

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {  //BuildContext will help us in navigation, localization, etc.
    return const MaterialApp(
        home: CurrencyConverterPage()
    );
  }
}
