import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Widget1 extends StatefulWidget {
  const Widget1({Key? key}) : super(key: key);

  @override
  State<Widget1> createState() => _Widget1State();
}

class _Widget1State extends State<Widget1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
    );
  }
}
