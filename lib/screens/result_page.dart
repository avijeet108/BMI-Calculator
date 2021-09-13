import '../components/reusableCard.dart';
import 'package:flutter/material.dart';
import '../contants.dart';


class ResultPage extends StatelessWidget {

  ResultPage({this.bmi, this.feedback, this.res});

  final String feedback;
  final String res;
  final String bmi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Your Result',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 35.0,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: ReusableCard(
              colour: kColourDiv,
              iconInfo: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(res, style: kResult),
                  Text(bmi, style: kBig),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(feedback, style: kTell, textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
            child: Container(
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: kNumberTextStyle.copyWith(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: kBottomColour,
              ),
              width: double.infinity,
              margin: EdgeInsets.only(top: 10.0),
              height: kBottomHeight,
            ),
          ),
        ],
      ),
    );
  }
}
