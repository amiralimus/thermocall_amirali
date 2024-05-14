
import 'package:flutter/material.dart';

class Freezers extends StatefulWidget {
  final bool errorfreezwes;
  final subtitle;
  final lastupdated;
  final min;
  final max;
  final normal;

  const Freezers({super.key, required this.errorfreezwes, this.subtitle,this.lastupdated, this.min, this.max, this.normal});

  @override
  State<Freezers> createState() => _FreezersState();
}

class _FreezersState extends State<Freezers> {
  bool get errorfreezwes => widget.errorfreezwes;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Padding(
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
                        widget.subtitle,
                        style: TextStyle(
                            color:
                                errorfreezwes ? Colors.white : Color(0xff002039),
                            fontSize: 23),
                      ),
                      Text(
                        widget.lastupdated,
                        style: TextStyle(
                            color:
                                errorfreezwes ? Colors.white : Color(0xff686868),
                            fontSize: 16),
                      )
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    widget.min,
                    style: TextStyle(
                        color: errorfreezwes ? Colors.white : Color(0xff686868)),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Container(
                    height: 55,
                    width: 55,
                    color: errorfreezwes ? Colors.red : Colors.white,
                    child: Center(
                      child: Text(
                        widget.normal,
                        style: TextStyle(
                            fontSize: 20,
                            color:
                                errorfreezwes ? Colors.white : Color(0xff002039)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, left: 8),
                  child: Text(
                    widget.max,
                    style: TextStyle(
                        color: errorfreezwes ? Colors.white : Color(0xff686868)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
