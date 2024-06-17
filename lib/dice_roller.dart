import 'dart:math';

import 'package:flutter/material.dart';


final randomizer = Random();

class DiceRoller extends StatefulWidget{
  const DiceRoller ({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  var currentDiceRoll = 2;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
            'assets/images/dice-$currentDiceRoll.png',
            width: 200
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: roleDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle:const TextStyle(
                fontSize: 28
            ),
          ),
          child: const Text('Role Dice'),
        )
      ],
    );
  }
  roleDice(){
    setState(() {
      currentDiceRoll = randomizer.nextInt(6)+1;
    });
    print(currentDiceRoll);
  }
}