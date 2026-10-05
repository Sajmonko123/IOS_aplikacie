import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const RollTheDiceApp());
}

class RollTheDiceApp extends StatelessWidget {
  const RollTheDiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Roll the Dice',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const DicePage(),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  static const int _diceSides = 6;

  final Random _random = Random();
  int _diceValue = 1;

  void _rollDice() {
    setState(() {
      // nextInt(6) vracia 0–5, preto +1 pre rozsah 1–6.
      _diceValue = _random.nextInt(_diceSides) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.primary,
      appBar: AppBar(
        title: const Text('Roll the Dice'),
        centerTitle: true,
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-$_diceValue.png',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 24),
            Text(
              'Hodil si: $_diceValue',
              style: TextStyle(fontSize: 24, color: colorScheme.onPrimary),
            ),
            const SizedBox(height: 32),
            ElevatedButton.icon(
              onPressed: _rollDice,
              icon: const Icon(Icons.casino),
              label: const Text('Hodiť kockou'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 16,
                ),
                textStyle: const TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
