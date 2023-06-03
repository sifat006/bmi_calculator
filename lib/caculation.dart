import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
   ResultPage({required this.bmiResult, required this.bmiClass,required this.bmiAdvice});
final String bmiResult;
final String bmiClass;
final String bmiAdvice;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BMI CALCULATOR")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child:const  Text(
                "Your Result",
                style: kResultTitleText,
              ),
            ),
          ),
         Expanded(
            flex: 5,
            child: ReUsableCard(
                colour: kActiveCardColor,
                cardChild:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(bmiResult,
                    style: kResultTextStyle,),
                    Text(bmiClass,
                    style: kBMITextStyle,),
                    Text(bmiAdvice,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      
                      fontSize: 22,
                    ),
                    ),

                  ],
                ),
               ),
          ),
          BottomButton(ontap:() {
            Navigator.pop(context);
          }, bottomText:" RE-CALCULATE",)
        ],
      ),

    );
  }
}
