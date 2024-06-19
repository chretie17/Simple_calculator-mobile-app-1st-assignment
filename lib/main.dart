import 'package:flutter/material.dart';

void main() {
  runApp(const SimpleCalculatorApp());
}

class SimpleCalculatorApp extends StatelessWidget {
  const SimpleCalculatorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple Calculator'),
        ),
        body: const CalculatorInterface(),
      ),
    );
  }
}

class CalculatorInterface extends StatelessWidget {
  const CalculatorInterface({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(20),
            alignment: Alignment.bottomRight,
            child: Text(
              '0',
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Row(
          children: <Widget>[
            _buildButton('C', Colors.redAccent),
            _buildButton('⌫', Colors.blueGrey),
            _buildButton('%', Colors.blueGrey),
            _buildButton('/', Colors.blueGrey),
          ],
        ),
        Row(
          children: <Widget>[
            _buildButton('7', Colors.black54),
            _buildButton('8', Colors.black54),
            _buildButton('9', Colors.black54),
            _buildButton('*', Colors.blueGrey),
          ],
        ),
        Row(
          children: <Widget>[
            _buildButton('4', Colors.black54),
            _buildButton('5', Colors.black54),
            _buildButton('6', Colors.black54),
            _buildButton('-', Colors.blueGrey),
          ],
        ),
        Row(
          children: <Widget>[
            _buildButton('1', Colors.black54),
            _buildButton('2', Colors.black54),
            _buildButton('3', Colors.black54),
            _buildButton('+', Colors.blueGrey),
          ],
        ),
        Row(
          children: <Widget>[
            _buildButton('.', Colors.black54),
            _buildButton('0', Colors.black54),
            _buildButton('00', Colors.black54),
            _buildButton('=', Colors.blueGrey),
          ],
        )
      ],
    );
  }

 Widget _buildButton(String label, Color color) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(1.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color,  // Corrected property name
            padding: const EdgeInsets.all(30.0),
            textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: () {},  // No functionality, just a stub for UI
          child: Text(label),
        ),
      ),
    );
  }
}
