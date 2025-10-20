/* Widgets are the building blocks of an APP's interface, they're responsible for 
describing what the UI of an APP should be like  */
import 'package:currency_converter/currency_converter_cupertino_page.dart';
import 'package:currency_converter/currency_converter_material_page.dart';
//Relative importing
//import './currency_converter_materialPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart'; //- for iOS

void main() {
  //to run the material app , run the code below;
  runApp(const MyApp());
  //runApp(const MyCupertinoApp());
}

//Types of widget
/* statelessWidget -  here the state/data is immutable(cannot change)
 statefulWidget -  here the state/data is mutable(can change)
 InheritedWidget */
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    /* return const Text(
      "HI I'm excited to build the currency converter app",
      textDirection: TextDirection.ltr,
    ); */
    //Scaffold takes care of the design of the particular page
    //with scaffold you can add headers, footers etc
    //MaterialApp takes care of the overall theming
    //Material App looks after the global design meanwhile scaffold handles the local design of the pages
    return const MaterialApp(home: CurrencyConverterMaterialPage());
  }
}

//TYPES OF DESIGN
//1. Material design - created by google
//2. Cupertino design - created by apple
class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(home: CurrencyConverterCupertinoPage());
  }
}
