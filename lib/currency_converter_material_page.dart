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

  // void convert() {
  //   if (textEditingController.text.isNotEmpty) {
  //     try {
  //       result = double.parse(textEditingController.text) * 84.03;
  //       setState(() {});
  //     } catch (e) {
  //       print('Error:$e');
  //     }
  //   } else {
  //     result = 0;
  //     setState(() {});
  //   }
  // }

  // @override
  // void dispose() {
  //   textEditingController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //background color
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 1.0,
        centerTitle: true,
        title: const Text(
          'Currency Converter',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result.toString(),
              style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  hintText: 'Please Enter The Amount In USD',
                  hintStyle: TextStyle(
                    color: Colors.white70,
                  ),
                  suffixIcon: Icon(Icons.monetization_on_sharp),
                  suffixIconColor: Colors.white54,
                  filled: true,
                  fillColor: Colors.white38,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                ),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            //BUTTON
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                   
                  setState(() {});
                },
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.white),
                    foregroundColor: WidgetStatePropertyAll(Colors.black)),
                // minimumSize:MaterialStateProperty
                // ignore: unnecessary_const
                child: const Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
