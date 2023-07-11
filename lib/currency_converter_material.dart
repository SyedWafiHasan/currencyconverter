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
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        style: BorderStyle.solid,
        width: 2.0,
      ),
      borderRadius: BorderRadius.all(Radius.circular(5)),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Currency Converter"),
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '₹ ${result.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(color: Colors.black),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black,
                  hintText: 'Please enter the amount in USD',
                  hintStyle: TextStyle(color: Colors.black26),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    if (textEditingController.text != '0' && textEditingController.text.isNotEmpty) {
                      result = double.parse(textEditingController.text) * 82.5;
                    } else {
                      result = 0;
                    }
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                ),
                child: const Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
