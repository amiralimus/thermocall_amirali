import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            child: textfild1,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              'password',
              style: TextStyle(color: textcolor, fontSize: 16),
            ),
          ),
          textfild2,
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
          boton1,
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Align(
                alignment: Alignment.center,
                child: Text('Dont have an account?'))
          ),
              Padding(
                padding: const EdgeInsets.only(top:6.9),
                child: boton2,
              ),
            ]),
      ),
    );
  }
}

//فانگشن هایی که در اپ استفاده شده
var textfild1 = TextField(
  //تکست فیلد هایی که در صفحه اول استفاده میشن
  style: TextStyle(
    color: Colors.black54, // رنگ متن
    fontSize: 10, // اندازه متن
  ),

  decoration: InputDecoration(
    labelText: 'enter your email',
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black54, width: 1.3), // استایل حاشیه
    ),
  ),
);
var textfild2 = TextField(
  //تکست فیلد هایی که در صفحه اول استفاده میشن
  style: TextStyle(
    color: Colors.black54, // رنگ متن
    fontSize: 10, // اندازه متن
  ),

  decoration: InputDecoration(
    labelText: 'enter your password',
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black54, width: 1.3), // استایل حاشیه
    ),
  ),
);
var boton1 = ElevatedButton(
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
    'Log in',
    style: TextStyle(
        fontSize: 16.0,
        color: Colors.white70), // سایز و فونت متن را می‌توانید تغییر دهید
  ),
);
var boton2=Container(
width: 55,
height: 55,
decoration: BoxDecoration(
border: Border.all(color: Colors.black87, width: 2),
borderRadius: BorderRadius.circular(10,), // برای گوشه‌های گرد
),
child: Scaffold(
  backgroundColor: Colors.white70,
  body: Center(
    child: Text('Register',style: TextStyle(color: Colors.black, fontSize: 16),
  ) ,
)
),
);
var textcolor = Colors.black54;
