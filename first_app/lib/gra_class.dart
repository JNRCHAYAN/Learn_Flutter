import 'package:flutter/material.dart';
import 'package:first_app/my_textst.dart';
import 'package:first_app/dice_roller.dart';
class Grd extends StatelessWidget {
  // one color accepted
  //const Grd(this.colors,{super.key});
  // Alternative  const Grd({super.key required this.colors});
  //Two color accept
  // final List<Color> colors;
  const Grd(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;


  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color1, color2],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        // child: Center(child: St_Text('roy')
        child: Center(
            child: DiceRoller()
        )
    );
  }
}
