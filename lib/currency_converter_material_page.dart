//import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialpage extends StatelessWidget {
  const CurrencyConverterMaterialpage({super.key});
  @override
  //Build context tells you the location of a particular widget in a widget tree
  Widget build(BuildContext context) {
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //vertical center
          //crossAxisAlignment: CrossAxisAlignment.center, //Horizontal center
          children: [
            //right click text- then refactor, wrap in container
            //To remove container and it's properties, right click and select remove widgets
            const Text(
              '0',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.w600,
              ),
            ),
            //Container
            //Padding
            //right click on textfield, refactor and select wrap with padding
            Container(
              padding: const EdgeInsets.all(10.0),
              //margin: const EdgeInsets.all(8.0),
              child: TextField(
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
            ),
            //Types of button in material design - 1. Raised 2. Appears like a Text (Text Button)
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                //Pass a void function
                onPressed: () {
                  if (kDebugMode) {
                    print('clicked me');
                  }
                },

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
    );
  }
}
