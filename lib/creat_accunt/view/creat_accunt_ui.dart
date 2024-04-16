import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../emile_input.dart';
import '../../log_in/view/log_in_ui.dart';

class Creat_accunt_1 extends StatelessWidget {
  const Creat_accunt_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 120, left: 16, right: 16, bottom: 32),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Emile',
              style: TextStyle(color: textcolor, fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: EmileInput(),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              'Create password',
              style: TextStyle(color: textcolor, fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child:PasswordInput(),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              'repeat your password',
              style: TextStyle(color: textcolor, fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 26),
            child:PassswordRegesterPageInput()
          ),
              RegesterRegesterBoton()  ,
          Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Align(
                  alignment: Alignment.center,
                  child: Text('Already have an accunt?'))),
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: LogInRegesterPageBoton(),
          ),
        ]),
      ),
    );
  }
}


