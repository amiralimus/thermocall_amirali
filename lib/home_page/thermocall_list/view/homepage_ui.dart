import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thermocall_amirali/home_page/thermocall_list/view/the_freezers.dart';
import 'package:thermocall_amirali/log_in/view/log_in_ui.dart';

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
            Freezers(
              errorfreezwes: false,
              subtitle: 'bab1',
              lastupdated: 'Last updated 6:25 pm',
              max: '-20',
              min: '20',
              normal: '10',
            ),
            Freezers(
                errorfreezwes: true,
                subtitle: 'bab2',
                lastupdated: 'Last updated 7:25 pm',
                max: '-30',
                min: '30',
                normal: '20'),
            Freezers(
                errorfreezwes: false,
                subtitle: 'bab3',
                lastupdated: 'Last updated 8:25 pm',
                max: '-40',
                min: '40',
                normal: '30'),
            Freezers(
                errorfreezwes: false,
                subtitle: 'bab4',
                lastupdated: 'Last updated 9:25 pm',
                max: '-50',
                min: '50',
                normal: '40'),
            Freezers(
                errorfreezwes: false,
                subtitle: 'bab5',
                lastupdated: 'Last updated 9:25 pm',
                max: '-60',
                min: '60',
                normal: '50'),
            Freezers(
                errorfreezwes: false,
                subtitle: 'bab6',
                lastupdated: 'Last updated 10:25 pm',
                max: '-70',
                min: '80',
                normal: '60'),
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
                        child: Icon(
                      Icons.add,
                      color: Colors.white70,
                    )),
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
                height: 0.8,
              ),
              Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 3),
                  child: Icon(
                    Icons.home,
                    color: Colors.grey,
                    size: 22,
                  ),
                ),
                Spacer(),
                Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16, top: 3),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (cintext) => Log_In_1()),
                          );
                        },
                        icon: Icon(
                          Icons.account_circle_outlined,
                          color: Colors.grey,
                          size:22,
                        )))
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
