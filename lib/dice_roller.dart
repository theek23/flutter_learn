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
    setState(() {
      activeDiceImage = 'assets/images/dice-4.png';
    });
    print('Changing image');
  }
}