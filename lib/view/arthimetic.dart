import 'package:flutter/material.dart';

class Arithmetic extends StatefulWidget {
  const Arithmetic({super.key});

  @override
  State<Arithmetic> createState() => _ArithmeticState();
}

class _ArithmeticState extends State<Arithmetic> {
  int first = 0;
  int second = 0;
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic Operations'),
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              // First number input field
              TextField(
                onChanged: (value) {
                  setState(() {
                    first = int.tryParse(value) ?? 0;
                  });
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter First Number',
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              // Second number input field
              TextField(
                onChanged: (value) {
                  setState(() {
                    second = int.tryParse(value) ?? 0;
                  });
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Second Number',
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              // Display result
              Text(
                'Result : $result',
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              // Addition button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = first + second;
                    });
                  },
                  child: const Text('Addition'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              // Subtraction button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = first - second;
                    });
                  },
                  child: const Text('Subtraction'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              // Multiplication button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = first * second;
                    });
                  },
                  child: const Text('Multiplication'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              // Division button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (second != 0) {
                        result = first ~/ second; // Integer division
                      } else {
                        result = 0; // Handling division by zero
                      }
                    });
                  },
                  child: const Text('Division'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
