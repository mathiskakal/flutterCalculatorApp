import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'button_values.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

// Where the main UI lies
class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {

    final screenSize=MediaQuery.of(context).size;

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
              reverse: true,
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
          Wrap(
            children: Btn.buttonValues
            .map(
              (value) => SizedBox(
                width: screenSize.width/4,
                height: screenSize.width/5,
                child: buildButton(value))
              )
              .toList(),
          )
        ], ),
      )
    );
  }

  // The definition of a button
  Widget buildButton(value){

    // Buttons are wrapped around a padding of 4 on all sides
    return Padding(
      padding: const EdgeInsets.all(4.0),

      // Inside that padded area,
      child: Material(

        // If the value of the button corresponds to clr or del, as per defined in button class, set its color to blueGrey, otherwise if...
        color: [Btn.del,Btn.clr,Btn].contains(value)?Colors.blueGrey

        // they are the following:
        :[
          Btn.per,
          Btn.multiply,
          Btn.divide,
          Btn.add,
          Btn.subtract,
          Btn.divide,
          Btn.calculate,

          // Make them Orange or finally black if they don't correspond
          ].contains(value)?Colors.orange:Colors.black87,

        // The button's animation will not overflow out of the newly defined border
        clipBehavior: Clip.hardEdge,
        shape: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white24),
          borderRadius: BorderRadius.circular(100),
        ),

        // A component that mimicks a material splash when you tap on it
        child: InkWell(
          onTap: (){},

          // Inside it, a text
          child: Center(
            child: Text(value),
          ),
        ),
      ),
    );
  }

}