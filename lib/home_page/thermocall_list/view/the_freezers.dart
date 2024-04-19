import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Freezers extends StatefulWidget {
  const Freezers({super.key});

  @override
  State<Freezers> createState() => _FreezersState();
}

class _FreezersState extends State<Freezers> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: Color(0xf1f90ff),
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
                      style: TextStyle(color: Color(0xff002039), fontSize: 23),
                    ),
                    Text(
                      'Last updated 6:25 pm',
                      style: TextStyle(color: Color(0xff686868), fontSize: 16),
                    )
                  ],
                ),
              ),
          Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  '-65',
                  style: TextStyle(color: Color(0xff686868)),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  height: 55,
                  width: 55,
                  color: Colors.white70,
                  child: Center(
                    child: Text(
                      '-60',
                      style: TextStyle(fontSize: 20, color: Color(0xff002039)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0,left: 8),
                child: Text(
                  '-50',
                  style: TextStyle(color: Color(0xff686868)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FreezerRed extends StatefulWidget {
  const FreezerRed({super.key});

  @override
  State<FreezerRed> createState() => _FreezerRedState();
}

class _FreezerRedState extends State<FreezerRed> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: Colors.redAccent ,
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
                      style: TextStyle(color: Colors.white70, fontSize: 23),
                    ),
                    Text(
                      'Last updated 6:25 pm',
                      style: TextStyle(color: Colors.white70, fontSize: 16),
                    )
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  '-65',
                  style: TextStyle(color: Colors.white70),
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
                      style: TextStyle(fontSize: 20, color: Colors.white70)),
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0,left: 8),
                child: Text(
                  '-50',
                  style: TextStyle(color: Colors.white70),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
