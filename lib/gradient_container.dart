import 'package:flutter/material.dart';
import 'package:flutter_demo/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;


class GradientContainer extends StatelessWidget{
  final Color color1;
  final Color color2;

  const GradientContainer(
      this.color1,
      this.color2,
      {super.key}
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1,color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
          child: StyledText('Hutta')
      ),
    );
  }
}


/*
class GradientContainer extends StatelessWidget{
  final List<Color> colors;

  const GradientContainer(
      this.colors,
      {super.key}
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: StyledText('Hutta')
      ),
    );
  }
}*/
