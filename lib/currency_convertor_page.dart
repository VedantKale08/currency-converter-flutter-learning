import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CurrencyConverterPage extends StatefulWidget {
  const CurrencyConverterPage({super.key});

  @override
  State<CurrencyConverterPage> createState() =>
      _CurrenciesConverterPagePrivate();
}

class _CurrenciesConverterPagePrivate extends State<CurrencyConverterPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    setState(() {
      //it calls build function again
      result = double.parse(textEditingController.text) * 83;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Currency Converter"),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "INR. ${result != 0 ? result.toStringAsFixed(2) : 0}",
                style: const TextStyle(fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: textEditingController,
                decoration: const InputDecoration(
                  hintText: "Please enter the amount in USD",
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                keyboardType: const TextInputType.numberWithOptions(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: convert,
                style: const ButtonStyle(
                  elevation: MaterialStatePropertyAll(5),
                  backgroundColor: MaterialStatePropertyAll(Colors.blue),
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                  padding: MaterialStatePropertyAll(
                      EdgeInsets.symmetric(horizontal: 30)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Convert"),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.arrow_forward)
                  ],
                ),
              ),
            )
          ],
        )));
  }
}
