import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Temperatures extends StatefulWidget {
  final min;
  final norma;
  final max;

  const Temperatures({super.key, this.min, this.norma, this.max});

  @override
  State<Temperatures> createState() => _TemperaturesState();
}

class _TemperaturesState extends State<Temperatures> {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right:10),
            child: Text(
              widget.min,
              style: TextStyle(color: Color(0xff002039), fontSize: 20),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
                height: 55,
                width: 55,
                color: Color(0xF26F9FF),
                child: Center(
                    child: Text(
                  widget.norma,
                  style: TextStyle(color: Color(0xff002039), fontSize: 22),
                ))),
          ),
          Padding(
            padding: const EdgeInsets.only(left:10),
            child: Text(
              widget.max,
              style: TextStyle(color: Color(0xff002039), fontSize: 20),
            ),
          ),
        ]);
  }
}

class Botons extends StatefulWidget {
  const Botons({super.key});

  @override
  State<Botons> createState() => _BotonsState();
}

class _BotonsState extends State<Botons> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0, bottom: 8),
              child: ElevatedButton(
                child: Text(
                  'Cacel',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                onPressed: () {},
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    EdgeInsets.only(left: 32, right: 32), // تغییر اندازه دکمه
                  ),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 1.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 8),
              child: ElevatedButton(
                child: Text(
                  'Save',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onPressed: () {},
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10.0), // تغییر شعاع گردی
                      ),
                    ),
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.only(left: 32, right: 32), // تغییر اندازه دکمه
                    ),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xff002039))),
              ),
            ),
          ]),
    );
  }
}
