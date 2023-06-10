import 'package:flutter/material.dart';
import 'package:testing_app/button.dart';
import 'package:testing_app/custom_card.dart';
import 'constants.dart';
import 'button.dart';
class ResultPage extends StatelessWidget {
  ResultPage({required this.bmi_result,required this.interpretaiton, required this.result});
  final String bmi_result;
  final String result;
  final String interpretaiton;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
            alignment: Alignment.bottomLeft,
            child: Text(
              "YOUR RESULTS",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
            ),
          )),
          Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kcolorCard,
                childCard: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      result,
                      style: TextStyle(fontSize: 20, color: Colors.green),
                    ),
                    Text(bmi_result,
                    style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold
                    ),),
                    Text(interpretaiton,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22
                    ),),
                  ],
                ),
                onPress: () {},
              )),
          BottomButton(bottomTitle: 'RE-CALCULATE',onTap: () {
            Navigator.pop(context);
          },
            )
        ],
      ),
    );
  }
}
