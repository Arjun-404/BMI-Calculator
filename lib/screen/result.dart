import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../constants.dart';
import '../components/reusableContainer.dart';
import '../components/buttom_Button.dart';

class ResultBMI extends StatelessWidget {
  ResultBMI({
    required this.BMIResult,
    required this.getResult,
    required this.interpretation,
  });

  final String BMIResult;
  final String getResult;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Container(
                child: Shimmer.fromColors(
                baseColor: Colors.white,
        highlightColor: Colors.grey.shade800,
        child: Text(
          " Your Result ",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),)),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableContainer(
              colour: kactiveCardColor,
              cardChild: Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      getResult.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      BMIResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  ],
                ),
              ), onPressed: () {  },
            ),
          ),
          ButtomButton(
            buttomText: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}