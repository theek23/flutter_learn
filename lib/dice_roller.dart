import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget{
  const DiceRoller ({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }

}

class _DiceRollerState extends State<DiceRoller>{
  var activeDiceImage = 'assets/images/dice-2.png';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
            activeDiceImage,
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
    var randomNumber = Random().nextInt(6)+1;
    /*String newDiceImage;
    switch (randomNumber) {
      case 1:
        newDiceImage = 'assets/images/dice-1.png';
        break;
      case 2:
        newDiceImage = 'assets/images/dice-2.png';
        break;
      case 3:
        newDiceImage = 'assets/images/dice-3.png';
        break;
      case 4:
        newDiceImage = 'assets/images/dice-4.png';
        break;
      case 5:
        newDiceImage = 'assets/images/dice-5.png';
        break;
      case 6:
        newDiceImage = 'assets/images/dice-6.png';
        break;
      default:
        newDiceImage = 'assets/images/dice-1.png'; // Default case
    }*/
    setState(() {
      //activeDiceImage = activeDiceImage = newDiceImage;;
      activeDiceImage = 'assets/images/dice-$randomNumber.png';
    });
    print(randomNumber);
  }
}