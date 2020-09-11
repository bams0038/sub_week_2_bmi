import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ResultScreen extends StatelessWidget {
  final bmiModel;

  ResultScreen({this.bmiModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 200,
            width: 200,
            child: bmiModel.isNormal
                ? SvgPicture.asset(
                    "assets/images/happy.svg",
                    fit: BoxFit.contain,
                  )
                : SvgPicture.asset(
                    "assets/images/sad.svg",
                    fit: BoxFit.contain,
                  ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "BMI Anda : ${bmiModel.bmi.round()}",
            style: TextStyle(
                color: Colors.blue, fontSize: 34, fontWeight: FontWeight.w700),
          ),
          Text(
            "${bmiModel.comments}",
            style: TextStyle(
                color: Colors.grey[700],
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 16,
          ),
          bmiModel.isNormal
              ? Text(
                  "Selamat, BMI anda Normal.",
                  style: TextStyle(
                      color: Colors.red[700],
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                )
              : Text(
                  "Aduh.. BMI anda tidak Normal.",
                  style: TextStyle(
                      color: Colors.red[700],
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
          SizedBox(
            height: 16,
          ),
          Container(
            child: FlatButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              label: Text("Hitung Lagi"),
              textColor: Colors.white,
              color: Colors.green,
            ),
            width: double.infinity,
            padding: EdgeInsets.only(left: 16, right: 16),
          )
        ],
      ),
    ));
  }
}
