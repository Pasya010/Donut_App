import 'package:donut_app/models/items.dart';
import 'package:donut_app/models/price.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:donut_app/constants.dart';

import 'components/categories.dart';
import 'components/food_section.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
            const FoodSection(),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
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
              child: Row(
                children: [
                  Column(
                    children: [
                       Text.rich(
                        TextSpan(
                          text: '${ref.watch(ItemsProvider)} | ' '\$' "${ref.watch(PriceProvider)}\n",
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    children: const [
                      TextSpan(
                        text: "Delivery Charges Included",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.normal),
                      ),
                    ],
                        )
                      )
                    ],
                  ),
                  const SizedBox(width: 30),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                    onPressed: () {
                      ref.invalidate(ItemsProvider);
                      ref.invalidate(PriceProvider);
                    },
                    child: const Text(
                      "Clear Chart",
                      style: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
