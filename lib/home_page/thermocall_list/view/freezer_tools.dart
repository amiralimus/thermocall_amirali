import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BotonFreezerEditor extends StatefulWidget {
  final min;
 final max;
 final normal;
  const BotonFreezerEditor({super.key,this.min,this.max,this.normal});

  @override
  State<BotonFreezerEditor> createState() => _MinBotonFreezerEditorState();
}

class _MinBotonFreezerEditorState extends State<BotonFreezerEditor> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Container(
            height: 75,
            width: 75,
            color: Colors.white10,
            child: Center(
              child: Text(
                widget.min,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
        ),







ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Container(
        height: 75,
        width: 75,
        color: Color(0xf1f90ff),
        child: Center(
          child: Text(
            widget.min,
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
      ),
    ),

        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Container(
            height: 75,
            width: 75,
            color: Colors.white10,
            child: Center(
              child: Text(
                widget.max,
                style: TextStyle(fontSize: 20, color:  Colors.black),
              ),
            ),
          ),
        ),
    ],
    );
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
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {

          },
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(Color(0xff002039)),
            // تغییر رنگ دکمه به رنگ آبی
            minimumSize: MaterialStateProperty.all<Size>(
                Size(50, 50)), // تغییر اندازه دکمه به 150 در 50
          ),
          child: Text(
            'CANCEL',
            style: TextStyle(
                fontSize: 16.0,
                color: Colors.white70), // سایز و فونت متن را می‌توانید تغییر دهید
          ),
        ),
        ElevatedButton(
          onPressed: () {

          },
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(Color(0xff002039)),
            // تغییر رنگ دکمه به رنگ آبی
            minimumSize: MaterialStateProperty.all<Size>(
                Size(50, 50)), // تغییر اندازه دکمه به 150 در 50
          ),
          child: Text(
            'save',
            style: TextStyle(
                fontSize: 16.0,
                color: Colors.white70), // سایز و فونت متن را می‌توانید تغییر دهید
          ),
        ),
      ],

    );
  }
}
