import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Freezers extends StatefulWidget {
  final bool errorfreezwes;

  const Freezers({Key? key, required this.errorfreezwes}) : super(key: key);

  @override
  State<Freezers> createState() => _FreezersState();
}

class _FreezersState extends State<Freezers> {
  bool get errorfreezwes => widget.errorfreezwes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: errorfreezwes ? Colors.redAccent : Color(0xf1f90ff),
          height: 100,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bio cell',
                      style: TextStyle(color:errorfreezwes ? Colors.white : Color(0xff002039), fontSize: 23),
                    ),
                    Text(
                      'Last updated 6:25 pm',
                      style: TextStyle(color:errorfreezwes ? Colors.white : Color(0xff686868), fontSize: 16),
                    )
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  '-65',
                  style: TextStyle(color: errorfreezwes ? Colors.white : Color(0xff686868)),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  height: 55,
                  width: 55,
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      '-60',
                      style: TextStyle(fontSize: 20, color: errorfreezwes ? Colors.white : Color(0xff002039)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8),
                child: Text(
                  '-50',
                  style: TextStyle(color: errorfreezwes ? Colors.white : Color(0xff686868)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
