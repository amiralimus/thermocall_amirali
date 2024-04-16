import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../emile_input.dart';

class Log_In_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 188, left: 16, right: 16, bottom: 32),
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
            padding: const EdgeInsets.only(bottom: 32),
            child: EmileInput(),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              'password',
              style: TextStyle(color: textcolor, fontSize: 16),
            ),
          ),
          PasswordInput(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text(
                'Forgot password?',
                style: TextStyle(color: Colors.blueAccent, fontSize: 14),
                textAlign: TextAlign.right,
              ),
            ),
          ),
         LogInBoton(),
          Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Align(
                  alignment: Alignment.center,
                  child: Text('Dont have an account?'))),
          Padding(
            padding: const EdgeInsets.only(top: 6.9),
            child: RegisterBoton(),
          ),
        ]),
      ),
    );
  }
}

var textcolor = Colors.black54;
