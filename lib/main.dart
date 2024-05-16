import 'package:flutter/material.dart';
//1-vazifa---------------------------------------------------------------------

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Temperature Converter',
      home: TemperatureConverter(),
    );
  }
}

class TemperatureConverter extends StatefulWidget {
  @override
  _TemperatureConverterState createState() => _TemperatureConverterState();
}

class _TemperatureConverterState extends State<TemperatureConverter> {
  double countOfCelcium = 0;
  double _fahrenheit = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temperature Converter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter temperature in Celcium',
              ),
              onChanged: (value) {
                setState(() {
                  countOfCelcium = double.tryParse(value) ?? 0;
                  _fahrenheit = countOfCelcium * 9 / 5 + 32;
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              'Temperature in Fahrenheit: $_fahrenheit°F',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
