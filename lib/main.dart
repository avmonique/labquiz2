import 'package:flutter/material.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {

  int leftNumber = 0;
  int rightNumber = 0;

  void addToLeft() {
    setState(() {
      leftNumber++;
    });
  }
  void addToRight() {
    setState(() {
      rightNumber++;
    });
  }
  void resetNumbers() {
    setState(() {
      leftNumber = 0;
      rightNumber = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: addToLeft, 
                        child: Text("Left"),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: addToRight, 
                        child: Text("Right"),
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: resetNumbers, 
                  child: Text("Reset"),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("$leftNumber", 
                      style: TextStyle(fontSize: 36,),
                    ),
                    Text("$rightNumber", 
                      style: TextStyle(fontSize: 36,),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}