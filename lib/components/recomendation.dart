
import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class Recommendation extends StatelessWidget {
  const Recommendation({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),),

          Container(
            width: 70,
            height: 35,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton(
            onPressed: () {} ,
            child:
            Text('More',style: TextStyle(
              color: Colors.white,
            ),)),
          )
        ],
      ),
    );
  }
}
