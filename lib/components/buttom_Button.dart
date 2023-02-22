import 'package:flutter/material.dart';
import '../constants.dart';

class ButtomButton extends StatelessWidget {
  ButtomButton({required this.buttomText, required this.onTap});

  final String buttomText;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15,left: 15,right: 15),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
                color: kbuttomContainerColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Center(
              child: Text(buttomText, style: kLargeLabelTextStyle),
            ),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kbuttomContainerHeight,
          ),
        ),
      ),
    );
  }
}