import 'package:flutter/material.dart';
import 'package:first_app/my_textst.dart';
class Grd extends StatelessWidget {
  const Grd({super.key });

  @override
  Widget build(BuildContext context) {
    return Container
      (decoration: const BoxDecoration(
      gradient: LinearGradient(
        colors: [Colors.deepPurple, Colors.orange],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
        child: Center(child: St_Text('roy')
        )
    );
  }
  }