import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.8,
          child:
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding * 3 ),
                  child:
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child:
                        IconButton(
                            padding: EdgeInsets.symmetric(
                                horizontal: kDefaultPadding),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back_outlined),
                        ),
                        ),
        Spacer(),

      ],

                        ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: size.height * 0.04),
                        padding: EdgeInsets.all(kDefaultPadding / 2),
                        height: 62,
                        width: 62,
                        decoration: BoxDecoration(
                          color:kPrimaryColor,
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0,15),
                              blurRadius: 22,
                              color: kPrimaryColor.withOpacity(0.22),
                            ),
                            BoxShadow(
                              offset: Offset(-15,-15),
                              blurRadius: 20,
                              color: Colors.white,
                            ),
                          ]
                        ),
                        child: Icon(Icons.sunny,color: kPrimaryColor,),
                      ),
],
                  ),
                ),

              Container(
                height: size.height * 0.8,
                width: size.width * 0.75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(63),
                      bottomLeft: Radius.circular(63),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 60,
                        color: kPrimaryColor.withOpacity(0.29),
                      ),
                    ],
                    image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/img.png',
                      ),
                    )),
              ),
            ],

    );
  }
}
