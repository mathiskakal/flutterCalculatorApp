import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

// Where the main UI lies
class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // The main element, column, is wrapped in a widget called Safe Area, which allows the content not to overlap the system UI
      body:SafeArea(

        // The bottom property cancels the safe area for the bottom
        bottom: false,
        child: Column(children: [

          // Output section ==========
          // Styles are parameters of the Text Widget
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(16),
                child: Text(
                  "0", 
                  style: const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.end,
                ),
              ),
            ),
          ),

          // Buttons section ===========
        ], ),
      )
    );
  }
}