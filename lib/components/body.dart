import 'package:flutter/material.dart';
import 'package:plant_app/components/featurePlant.dart';
import 'package:plant_app/components/headerWithSearchbox.dart';
import 'package:plant_app/components/recomendPlantCard.dart';
import 'package:plant_app/components/recomendation.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/detailsScreen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          Recommendation(
            text: 'Recommended',
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                RecomendPlantCard(
                  image: 'assets/images/image_1.png',
                  title: "Samantha",
                  country: "Russia",
                  price: 440,
                  press: () {},
                ),
                RecomendPlantCard(
                  image: 'assets/images/image_2.png',
                  title: "Angelica",
                  country: "Russia",
                  price: 440,
                  press: () {},
                ),
                RecomendPlantCard(
                  image: 'assets/images/image_3.png',
                  title: "Samantha",
                  country: "Russia",
                  price: 440,
                  press: () {},
                ),
                RecomendPlantCard(
                  image: 'assets/images/image_1.png',
                  title: "Samantha",
                  country: "Russia",
                  price: 440,
                  press: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(),
                    ),
                    );
                  },
                ),
                RecomendPlantCard(
                  image: 'assets/images/image_2.png',
                  title: "Angelica",
                  country: "Russia",
                  price: 440,
                  press: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(),),);

                  },
                ),
                RecomendPlantCard(
                  image: 'assets/images/image_3.png',
                  title: "Samantha",
                  country: "Russia",
                  price: 440,
                  press: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(),),);

                  },
                ),
              ],
            ),
          ),
          Recommendation(
            text: 'Featured Plants',
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FeaturePlant(
                  image: 'assets/images/bottom_img_1.png',
                  press: () {},
                ),
                FeaturePlant(
                  image: 'assets/images/bottom_img_2.png',
                  press: () {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
        ],
      ),
    );
  }
}
