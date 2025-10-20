//import 'dart:math';
// ADDING FUNCTIONALITIES TO THE CURRENCY CONVERTER APP
//1.Create a variable that stores the converted currency value (naira)
//2. Create a fucntion that multiplies the value given by the text field with 1500
//3. Store the value in the variable that was created
//4. Display the variable
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  //Don't call a controller in a buld function, it will slow it down or make it expensive

  final TextEditingController textEditingController = TextEditingController();
  void convert() {
    print(textEditingController.text);

    setState(() {
      result = double.parse(textEditingController.text) * 1500;
    });
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  //Init state is what gets executed before the build function

  /*
  @override
   void initState() {
    super.initState();
    print('rebuilt');
  } */

  @override
  //Always keep the build function as simple as possible, Don't run asyncronous tasks in it
  Widget build(BuildContext context) {
    //print('rebuilt');

    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.black,
        width: 2.5,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
      borderRadius: BorderRadius.circular(5),
    );
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text(
          "Currency Converter",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, //vertical center
            //crossAxisAlignment: CrossAxisAlignment.center, //Horizontal center
            children: [
              //right click text- then refactor, wrap in container
              //To remove container and it's properties, right click and select remove widgets
              Text(
                // to convert int -> string = integervalue.toString()
                //to convert string -> int = int.parse(Stringvalue)
                //result!=0? -> this ternary operator means if result is not = 0 let result be in two decimal places
                'NGN ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}', // This will summarize the result's decimal in two places

                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                ),
              ),
              //Container
              //Padding
              //right click on textfield, refactor and select wrap with padding
              TextField(
                controller: textEditingController,
                //You can't add const to a parent widget, "Input Decoration" for example
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: "Please Enter the Amount in USD",
                  hintStyle: const TextStyle(fontSize: 18, color: Colors.black),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.white,
                  filled: true,
                  fillColor: const Color.fromRGBO(255, 255, 255, 1),
                  enabledBorder: border,
                  focusedBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  //signed: true,
                ),
              ),
              const SizedBox(height: 10),
              //Types of button in material design - 1. Raised 2. Appears like a Text (Text Button)
              ElevatedButton(
                //Pass a void function
                onPressed: convert,

                /* if (kDebugMode) {
                    print('clicked me');
                  } */
                //double.parse converts the string to a double
                //call the build function here
                //build(context);
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                //This child text should always be at the end, It's best practice
                child: const Text('Convert'),
              ),

              //borderRadius: BorderRadius.all(Radius.circular(60)),
              /* borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ), */
              /* borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(60),
                      right: Radius.circular(60),
                    ), */
              /* borderRadius: BorderRadius.vertical(
                      top: Radius.circular(60),
                      bottom: Radius.circular(60),
          
                  ), */
              /* suffixIcon: Icon(Icons.monetization_on),
                  suffixIconColor: Colors.white, */
              /* label: Text(
                    "Please Enter the Amount in USD",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ), */
            ],
          ),
        ),
      ),
    );
    //return const Scaffold();
  }
}

/* //A stateless widget is immutable, you can't change anything on the screen with it
class CurrencyConverterMaterialpagee extends StatelessWidget {
  const CurrencyConverterMaterialpagee({super.key});

  @override
  //Build context tells you the location of a particular widget in a widget tree
  Widget build(BuildContext context) {
    
  }
} */
//A constant behind a widget simply means the widget doesn't need a rebuild
