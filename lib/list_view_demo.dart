import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('alb albalb ka ja jackb '),
        Container(
          height: 100,
          width: double.infinity,
          child: Text('container'),
          color: Colors.white,
        ),
        Expanded(
          child: ListView(scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            children: [
             Container(
              height: 100,
              width: 200,
              color: Colors.green,
             ),
              Container(
              height: 100,
              width: 200,
              color: Colors.blue,
             ),
              Container(
              height: 100,
              width: 200,
              color: Colors.green,
             ),
              Container(
              height: 100,
              width: 200,
              color: Colors.blue,
             ), Container(
              height: 100,
              width: 200,
              color: Colors.green,
             ),
              Container(
              height: 100,
              width: 200,
              color: Colors.blue,
             ), Container(
              height: 100,
              width: 200,
              color: Colors.green,
             ),
              Container(
              height: 100,
              width: 200,
              color: Colors.blue,
             ), Container(
              height: 100,
              width: 200,
              color: Colors.green,
             ),
              Container(
              height: 100,
              width: 200,
              color: Colors.blue,
             ), Container(
              height: 100,
              width: 200,
              color: Colors.green,
             ),
              Container(
              height: 100,
              width: 200,
              color: Colors.blue,
             ),
            ],
          ),
        ),
        SizedBox(height: 100,width: double.infinity,)
      ],
    );
  }
}
