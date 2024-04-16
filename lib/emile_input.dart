import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmileInput extends StatefulWidget {
  const EmileInput({super.key});

  @override
  State<EmileInput> createState() => _EmileInputState();
}

class _EmileInputState extends State<EmileInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      //تکست فیلد هایی که در صفحه اول استفاده میشن
      style: TextStyle(
        color: Colors.black54, // رنگ متن
        fontSize: 10, // اندازه متن
      ),

      decoration: InputDecoration(
        labelText: 'enter your email',
        border: OutlineInputBorder(
          borderSide:
              BorderSide(color: Colors.black54, width: 1.3), // استایل حاشیه
        ),
      ),
    );
  }
}

class PasswordInput extends StatefulWidget {
  const PasswordInput({super.key});

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      //تکست فیلد هایی که در صفحه اول استفاده میشن
      style: TextStyle(
        color: Colors.black54, // رنگ متن
        fontSize: 10, // اندازه متن
      ),

      decoration: InputDecoration(
        labelText: 'enter your password',
        border: OutlineInputBorder(
          borderSide:
              BorderSide(color: Colors.black54, width: 1.3), // استایل حاشیه
        ),
      ),
    );
  }
}

class LogInBoton extends StatefulWidget {
  const LogInBoton({super.key});

  @override
  State<LogInBoton> createState() => _LogInBotonState();
}

class _LogInBotonState extends State<LogInBoton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
  }
}

class RegisterBoton extends StatefulWidget {
  const RegisterBoton({super.key});

  @override
  State<RegisterBoton> createState() => _RegisterBotonState();
}

class _RegisterBotonState extends State<RegisterBoton> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
  }
}

class LogInRegesterPageBoton extends StatefulWidget {
  const LogInRegesterPageBoton({super.key});

  @override
  State<LogInRegesterPageBoton> createState() => _LogInRegesterPageBotonState();
}

class _LogInRegesterPageBotonState extends State<LogInRegesterPageBoton> {
  @override
  Widget build(BuildContext context) {
    return Container(
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

  }
}

class PassswordRegesterPageInput extends StatefulWidget {
  const PassswordRegesterPageInput({super.key});

  @override
  State<PassswordRegesterPageInput> createState() => _PassswordRegesterPageInputState();
}

class _PassswordRegesterPageInputState extends State<PassswordRegesterPageInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
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
  }
}
