import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

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
        titleTextStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '0',
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                style: TextStyle(color: Colors.black),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                ),
                decoration: InputDecoration(
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
                  debugPrint('Convert button pressed');
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
