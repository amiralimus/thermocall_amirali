import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            child: textfild1,
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
            child: textfild3,
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
            child: textfild3,
          ),
          boton3,
              Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text('Already have an accunt?'))
              ),
              Padding(
                padding: const EdgeInsets.only(top:4),
                child: boton4,
              ),
        ]),
      ),
    );
  }
}

var textfild3 = TextField(
  //تکست فیلد هایی که در صفحه اول استفاده میشن
  style: TextStyle(
    color: Colors.black54, // رنگ متن
    fontSize: 10, // اندازه متن
  ),

  decoration: InputDecoration(
    labelText: 'repeat your password',
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black54, width: 1.3), // استایل حاشیه
    ),
  ),
);
var boton3 = ElevatedButton(
  onPressed: () {
    // این قسمت مربوط به عملکرد دکمه است، می‌توانید کد مربوط به انجام عملیات مورد نظرتان را اینجا وارد کنید
  },
  style: ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
    ),
    backgroundColor: MaterialStateProperty.all<Color>(Colors.black87),
    // تغییر رنگ دکمه به رنگ آبی
    minimumSize: MaterialStateProperty.all<Size>(
        Size(150, 59)), // تغییر اندازه دکمه به 150 در 50
  ),
  child: Text(
    'register',
    style: TextStyle(
        fontSize: 16.0,
        color: Colors.white70), // سایز و فونت متن را می‌توانید تغییر دهید
  ),
);
var boton4=Container(
  width: 55,
  height: 55,
  decoration: BoxDecoration(
    border: Border.all(color: Colors.black87, width: 2),
    borderRadius: BorderRadius.circular(10,), // برای گوشه‌های گرد
  ),
  child: Scaffold(
      backgroundColor: Colors.white70,
      body: Center(
        child: Text('Log in',style: TextStyle(color: Colors.black, fontSize: 16),
        ) ,
      )
  ),
);


