import 'package:flutter/material.dart';
import 'constants.dart';
import 'result_page.dart';
class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap,required this.bottomTitle});
  final VoidCallback onTap;
  final String bottomTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomCardColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: 80,
        child: Center(
          child: Text(
            bottomTitle,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}