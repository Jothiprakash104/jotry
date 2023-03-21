import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jotry/screens/Home_page.dart';

class Dash_bord extends StatefulWidget {
  const Dash_bord({Key? key}) : super(key: key);

  @override
  State<Dash_bord> createState() => _Dash_bordState();
}

class _Dash_bordState extends State<Dash_bord> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.orangeAccent,
      height: 700,
      width: 400,
      child: Stepper(currentStep: index,
        onStepCancel: () {
          if (index > 0) {
            setState(() {
              index -= 1;
            });
          }
        },
        onStepContinue: () {
          if (index <= 0) {
            setState(() {
              index += 1;
            });
          }
        },
        onStepTapped: (int index) {
          setState(() {
            index  = index;
          });
        },
        steps: [
          Step(
              title: Text("Test"),
              content: Container(

                child: Text("This is stepper"),
                alignment: Alignment.centerLeft,
              )),
          Step(
              title: Text("test 2"),
              content: Container(
                child: Text("This is stepper 2"),
                alignment: Alignment.centerLeft,
              )),
          Step(
              title: Text("test 3"),
              content: Container(
                child: Text("This is stepper 2"),
                alignment: Alignment.centerLeft,
              )),
        ],
      ),
    );
  }
}
