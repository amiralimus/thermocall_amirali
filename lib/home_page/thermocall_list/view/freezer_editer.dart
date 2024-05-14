import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'freezer_tools.dart';

class FreezerEditer extends StatefulWidget {
  final id;
  final update;

  const FreezerEditer({
    Key,
    this.id,
    this.update,
  });

  @override
  State<FreezerEditer> createState() => _FreezerEditerState();
}

class _FreezerEditerState extends State<FreezerEditer> {
  String id = "Th12345678";
  String update = "1 minutes ago";
  double _lowerValue = -65;
  double _upperValue = -50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Spacer(),
            Text(
              'Setup',
              style: TextStyle(color: Color(0xff002039)),
            ),

            Spacer(),
            Icon(
              Icons.more_vert_sharp,
              color: Color(0xff002039),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'ID: ' + id,
              style: TextStyle(color: Color(0xff002039), fontSize: 15),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Updated ' + update,
              style: TextStyle(color: Color(0xff002039), fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 30),
            child: TextField(
              style: TextStyle(
                color: Colors.black54,
                fontSize: 10,
              ),
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: Colors.black54,
                    width: 1.3,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: TextField(
              maxLines: 3,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 10,
              ),
              decoration: InputDecoration(
                labelText: 'Description',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: Colors.black54,
                    width: 1.3,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              'Set temperature range',
              style: TextStyle(color: Color(0xff002039), fontSize: 20),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Temperatures(
              min: '22',
              max: '33',
              norma: '88',
            ),
          ),
          RangeSlider(
            values: RangeValues(_lowerValue, _upperValue),
            min: -70,
            max: -50,
            divisions: 20,
            onChanged: (values) {
              setState(() {
                _lowerValue = values.start;
                _upperValue = values.end;
              });
            },
            activeColor: Color(0xff002039),
            inactiveColor: Color(0xff002039),

          ),
          Spacer(),
          Botons()
        ]),
      ),
    );
  }
}
