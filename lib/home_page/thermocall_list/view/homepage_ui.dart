import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thermocall_amirali/home_page/thermocall_list/view/the_freezers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: [
            Spacer(),
            Center(
              child: Text(
                'ThermoCall',
                style: TextStyle(color: Color(0xff002039)),
              ),
            ),
            Spacer(),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert_sharp,
                  color: Color(0xff002039),
                ))
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(children: [
            Freezers(errorfreezwes: false,),
            Freezers(errorfreezwes: true,),
            Freezers(errorfreezwes: false,),
            Freezers(errorfreezwes: false,),
            Freezers(errorfreezwes: false,),
            Freezers(errorfreezwes: false,),
          ]),
        ),
      ),
      bottomNavigationBar: ClipRRect(


        child: BottomAppBar(
          height: 130,
          color: Colors.white70,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Container(
                    height: 55,
                    width: 55,
                    color: Color(0xff002039),
                    child: Center(
                      child:Icon(Icons.add,
                      color: Colors.white70,)
                  ),
                ),
                ),
              ),
              Divider(
                color: Colors.grey,
                height: 0.8,
              ),
              Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 4),
                  child: Icon(
                    Icons.home,
                    color: Colors.grey,
                    size: 38,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 4),
                  child: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.grey,
                    size: 38,
                  ),
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
