
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'log_in/view/log_in_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
    Log_In_1(),
    );


  }
}
