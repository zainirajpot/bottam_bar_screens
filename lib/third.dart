import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool radioListTileValue = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          value: true,
          groupValue: radioListTileValue,
          onChanged: (value) {
            setState(() {
              radioListTileValue = value!;
            });
          },
        ),
        RadioListTile(
          value: false,
          title: const Text('foo baz'),
          groupValue: radioListTileValue,
          onChanged: (value) {
            setState(() {
              radioListTileValue = value!;
            });
          },
        ),
        RadioListTile(
          value: true,
          title: const Text('foo baz'),
          groupValue: radioListTileValue,
          onChanged: (value) {
            setState(() {
              radioListTileValue = value!;
            });
          },
        ),
        RadioListTile(
          value: true,
          title: const Text('foo baz'),
          groupValue: radioListTileValue,
          onChanged: (value) {
            setState(() {
              radioListTileValue = value!;
            });
          },
        ),
      ],
    );
  }
}
