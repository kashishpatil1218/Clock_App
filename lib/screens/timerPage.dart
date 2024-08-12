import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import '../uttils/global.dart';
import '../uttils/listview.dart';

class timerPage extends StatefulWidget {
  const timerPage({super.key});

  @override
  State<timerPage> createState() => _timerPageState();
}

class _timerPageState extends State<timerPage> {
  void timerPage() {
    Timer.periodic(
      Duration(seconds: 1),
      (timer) {
       setState(() {
         if(sec_time!=0||min_time!=0||hour_time!=0)
           {
             if(check){
               sec_time--;
               if(sec_time<0)
                 {
                   min_time--;
                   sec_time=59;
                   if(min_time<0){
                     hour_time--;
                     min_time=59;
                     sec_time=59;
                   }
                 }
             }
           }
       });
      },
    );
  }

  @override
  void initState() {
    //TODO:implement initState
    timerPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white12,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 58, bottom: 250,right: 50),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 280,
                width: 280,
                decoration: const BoxDecoration(
                  color: Colors.black38,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 240,
                width: 240,
                decoration: BoxDecoration(
                  color: Colors.black45,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade800,
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
              ),
              Container(
                height: 225,
                width: 225,
                decoration: const BoxDecoration(
                  color: Colors.black26,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 180,
                width: 180,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
              ),
              ...List.generate(
                60,
                (index) => Transform.rotate(
                  angle: (index * 6) * pi / 180,
                  child: const VerticalDivider(
                    color: Colors.white,
                    width: 2,
                    thickness: 2,
                    indent: 160,
                    endIndent: 415,
                  ),
                ),
              ),
              Transform.rotate(
                angle: (dateTime.second * 6) * pi / 180,
                child: VerticalDivider(
                  width: 3,
                  color: Colors.red,
                  indent: 175,
                  endIndent: 400,
                  thickness: 8,
                ),
              ),
              Text(
                '${hour_time.toString().padLeft(2, '0')}:${min_time.toString().padLeft(2, '0')}:${sec_time.toString().padLeft(2, '0')}',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 470),
                child: button_Timer(),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  check=true;
                });
              },
              child: Container(
                height: 70,
                width: 170,
                decoration: BoxDecoration(
                  color: Colors.black38,
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.white10,
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(3, 3))
                  ],
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Center(
                  child: Text(
                    'Start',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  sec_time=0;
                  hour_time=0;
                  min_time=0;
                  check=false;
                });
              },
              child: Container(
                height: 70,
                width: 170,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.white10,
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(3, 3),
                    )
                  ],
                  color: Colors.black38,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Center(
                  child: Text(
                    'Restart',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
