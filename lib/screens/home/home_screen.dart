import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:donut_app/constants.dart';

import 'components/categories.dart';
import 'components/food_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/menu.svg"),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset("assets/icons/profile.svg"),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "I want to Eat",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            const Categories(),
            const SizedBox(
              height: 10,
            ),
            const food_section(),
            const SizedBox(
              height: 20,
            ),
            Container(
          margin: const EdgeInsets.symmetric(        
          horizontal: 15),
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15,
          ),
          width: double.infinity,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(),
          ),
          child:  
          const Text.rich(
            TextSpan(
              text: "\$10\n",
              style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: "Delivery Charges Included",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),           
              ],
            ),
          ),
        ),
          ],
        ),
      ),
    );
  }
}
