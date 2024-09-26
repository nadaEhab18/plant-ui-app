import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class FeaturePlant extends StatelessWidget {
  const FeaturePlant({
    super.key, required this.image, required this.press,
  });

  final String image ;
  final Function press ;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size ;
    return GestureDetector(
      onTap: press(),
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2 ,
        ),
        width: size.width * 0.8,
        height: 195,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image,),
            )
        ),
      ),
    );
  }
}
