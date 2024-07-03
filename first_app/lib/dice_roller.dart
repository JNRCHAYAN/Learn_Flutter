import 'package:flutter/material.dart';
import 'dart:math';
// crate this classes for control widget statefullWidge and statlessWidge
class DiceRoller extends StatefulWidget

{
  DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    // TODO: implement createState
   return _DiceRoller();
  }
}
// uderscore meaning private class
class _DiceRoller extends  State<DiceRoller>
{
  var activeDiceImage = 'assets/images/2.webp' ;
  void rollDice() {
   var diceroll = Random().nextInt(5) + 1;
    // reexcute the build function for that we can use this setstate function
    setState(() {
      activeDiceImage = 'assets/images/$diceroll.webp';
    });
   // print("chaingi image");
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        activeDiceImage,
        width: 200,
      ),
      //ElevatedButton(onPressed: onPressed, child: child)
      //OutlinedButton(onPressed: onPressed, child: child)
      SizedBox(
        height: 20,
      ),
      TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.only(top:.1),
              // backgroundColor: Colors.white,
              foregroundColor: Colors.white,
              textStyle: TextStyle(fontSize: 18)),
          child: const Text("Roll Dice"))
    ]
    );
  }
}