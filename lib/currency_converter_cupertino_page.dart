import 'package:flutter/cupertino.dart';

//importing this enables you to import widgets from cupertino and have access to them
//type Stfl and "flutter stateful widget" boiler plate code will come up as below
// type stl for "flutter stateless widget"
class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() =>
      _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState
    extends State<CurrencyConverterCupertinoPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  void convert() {
    print(textEditingController.text);

    setState(() {
      result = double.parse(textEditingController.text) * 1500;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey3,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey3,

        //since title is alawys centered in ios- it is named middle
        middle: Text(
          "Currency Converter",
          style: TextStyle(color: CupertinoColors.white, fontSize: 25),
        ),
        //centerTitle: true,
      ),
      child: Center(
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
                  color: CupertinoColors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                ),
              ),
              //Container
              //Padding
              //right click on textfield, refactor and select wrap with padding
              CupertinoTextField(
                controller: textEditingController,
                //You can't add const to a parent widget, "Input Decoration" for example
                style: const TextStyle(color: CupertinoColors.black),
                //replace input decoration with box decoration
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                ),
                placeholder: "Please Enter the Amount in USD",
                prefix: const Icon(CupertinoIcons.money_dollar),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  //signed: true,
                ),
              ),
              const SizedBox(height: 10),
              //Types of button in material design - 1. Raised 2. Appears like a Text (Text Button)
              CupertinoButton(
                onPressed: convert,

                color: CupertinoColors.black,
                foregroundColor: CupertinoColors.white,
                minimumSize: const Size(double.infinity, 50),
                child: const Text('Convert'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
