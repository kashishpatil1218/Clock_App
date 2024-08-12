import 'package:clockapp_dailytask/uttils/global.dart';
import 'package:flutter/material.dart';



Widget button_Timer() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        width: 80,
        child: ListWheelScrollView(
          onSelectedItemChanged: (value) {
            hour_time = value;
          },
          itemExtent: 50,
          diameterRatio: 1.5,
          perspective: 0.01,
          children: [
            ...List.generate(
              99,
                  (index) => hour_show(index: index),
            ),
          ],
        ),
      ),
      const SizedBox(
        width: 20,
      ),
      SizedBox(
        width: 80,
        child: ListWheelScrollView(
          onSelectedItemChanged: (value) {
            min_time = value;
          },
          itemExtent: 50,
          diameterRatio: 1.5,
          perspective: 0.01,
          children: [
            ...List.generate(
              60,
                  (index) => min_show(index: index),
            ),
          ],
        ),
      ),
      const SizedBox(
        width: 20,
      ),
      SizedBox(
        width: 80,
        child: ListWheelScrollView(
          onSelectedItemChanged: (value) {
            sec_time = value;
          },
          itemExtent: 50,
          diameterRatio: 1.5,
          perspective: 0.01,
          children: [
            ...List.generate(
              60,
                  (index) => sec_show(index: index),
            ),
          ],
        ),
      ),
    ],
  );
}

Container sec_show({required int index}) {
  return Container(
    height: 50,
    width: 50,
    alignment: Alignment.center,
    child: Text(
      '$index',
      style: TextStyle(
          color: Colors.white, fontSize: 30, fontWeight: FontWeight.w300),
    ),
  );
}

Container min_show({required int index}) {
  return Container(
    height: 50,
    width: 50,

    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.black12,),
    alignment: Alignment.center,
    child: Text(
      '$index',
      style: TextStyle(
          color: Colors.white, fontSize: 30, fontWeight: FontWeight.w300),
    ),
  );
}

Container hour_show({required int index}) {
  return Container(
    height: 50,
    width: 50,
    alignment: Alignment.center,
    child: Text(
      '$index',
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.w300, fontSize: 30,),
    ),
  );
}