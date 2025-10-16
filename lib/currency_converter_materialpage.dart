import 'package:flutter/material.dart';

class CurrencyConverterMaterialpage extends StatelessWidget {
  const CurrencyConverterMaterialpage({super.key});
  @override
  //Build context tells you the location of a particular widget in a widget tree
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //vertical center
          //crossAxisAlignment: CrossAxisAlignment.center, //Horizontal center
          children: [
            Text(
              '0',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: "Please Enter the Amount in USD",
                hintStyle: TextStyle(fontSize: 18, color: Colors.black),
                prefixIcon: Icon(Icons.monetization_on_outlined),
                prefixIconColor: Colors.white,
                filled: true,
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 5,
                    style: BorderStyle.solid,
                  ),
                ),
                /* suffixIcon: Icon(Icons.monetization_on),
                suffixIconColor: Colors.white, */
                /* label: Text(
                  "Please Enter the Amount in USD",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ), */
              ),
            ),
          ],
        ),
      ),
    );
  }
}
