import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  Widget calcButton(String btnTxt,Color btnColor, Color txtColor) {
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: btnColor,
          padding: EdgeInsets.all(12.0)
        ),
        child: Text(
          btnTxt,
          style: TextStyle(
            fontSize: 35,
            color: txtColor,
          ),),
        onPressed: () {

        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CalculatorMaking'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(padding: EdgeInsets.all(30.0),
                child: Text('0',
                    style: TextStyle(
                    color: Colors.black,
                    fontSize: 100
                    ),
                ),)
              ],
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              calcButton('AC', Colors.grey, Colors.black),
              calcButton('+/-', Colors.grey, Colors.black),
              calcButton('%', Colors.grey, Colors.black),
              calcButton('/', Colors.orange, Colors.white),
            ],
          ),
          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              calcButton('7', Colors.grey.shade800, Colors.white),
              calcButton('8', Colors.grey.shade800, Colors.white),
              calcButton('9', Colors.grey.shade800, Colors.white),
              calcButton('x', Colors.orange, Colors.white),
            ],
          ),
          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              calcButton('4', Colors.grey.shade800, Colors.white),
              calcButton('5', Colors.grey.shade800, Colors.white),
              calcButton('6', Colors.grey.shade800, Colors.white),
              calcButton('-', Colors.orange, Colors.white),
            ],
          ),
          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              calcButton('1', Colors.grey.shade800, Colors.white),
              calcButton('2', Colors.grey.shade800, Colors.white),
              calcButton('3', Colors.grey.shade800, Colors.white),
              calcButton('+', Colors.orange, Colors.white),
            ],
          ),
          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[850],
                    padding: EdgeInsets.fromLTRB(30, 20, 110, 20)
                  ),
                  onPressed: () {},
                  child: Text('0',style: TextStyle(
                      fontSize: 35,
                      color: Colors.white),
                      textAlign: TextAlign.center,
                  )
              ),
                  calcButton('.', Colors.grey.shade800, Colors.white),
                  calcButton('=', Colors.orange, Colors.white),
            ],
          ),
          SizedBox(height: 10)
        ],
      ),
    );
  }
}




