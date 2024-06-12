import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

// Where the main UI lies
class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      // The main element, column, is wrapped in a widget called Safe Area, which allows the content not to overlap the system UI
      body:SafeArea(

        // The bottom property cancels the safe area for the bottom
        bottom: false,
        child: Column(children: [

          // Output section ==========
          Text("0"),

          // Buttons section ===========
        ], ),
      )
    );
  }
}