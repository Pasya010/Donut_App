import 'package:flutter/material.dart';
import 'package:donut_app/models/food_asset.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key, required this.food}) : super(key: key);
  final Food food;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation <double> animation;
  int quantity = 1;

  @override
  void initState(){
    super.initState();
    controller = AnimationController(vsync: this, duration: const Duration(seconds: 7));

    animation = CurvedAnimation(parent: controller, curve: Curves.linear);
    controller.repeat();
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 219, 219),
      body: ListView(
        children: [
          const SizedBox(height: 20),
          header(),
          const SizedBox(height: 20),
          image(),
          detail(),
        ],
      ),
    );
  }

  SizedBox image() {
    return SizedBox(
      width: double.infinity,
      height: 300,
      child: Stack(
        children: [
          Center(
            child: RotationTransition(
              turns: animation,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(250),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(250),
                  child: Image.asset(
                    widget.food.image,
                    fit: BoxFit.cover,
                    width: 250,
                    height: 250,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          const BackButton(color: Colors.black),
          const SizedBox(width: 15,),
          Text(
            widget.food.name,
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Colors.black,
                  fontSize: 25,
                ),
          ),
        ],
      ),
    );
  }

  Container detail() {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      color: Colors.white,
      ),
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10,),
          const Text(
            "Ingredients",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 25,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                child: Container(
                  height: 120,
                  width: 70,
                  margin: const EdgeInsets.only(top: 10, left: 0, right: 0),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 15,
                  ),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(color: Colors.black, width: 2.0),
                    borderRadius:
                        const BorderRadius.all(Radius.elliptical(60, 50)),
                  ),
                  alignment: Alignment.center,
                  child: const Text.rich(
                    TextSpan(
                      text: "Sugar\n",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: "8 Gram\n\n",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.normal),
                        ),
                        TextSpan(
                          text: "    2%",
                          style: 
                          TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.normal,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 5),
              Align(
                child: Container(
                  height: 120,
                  width: 70,
                  margin: const EdgeInsets.only(top: 10, left: 15, right: 0),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 15,
                  ),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(color: Colors.black, width: 2.0),
                    borderRadius:
                        const BorderRadius.all(Radius.elliptical(60, 50)),
                  ),
                  alignment: Alignment.center,
                  child: const Text.rich(
                    TextSpan(
                      text: "Salt\n",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: "8 Gram\n\n",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.normal),
                        ),
                        TextSpan(
                          text: "    3%",
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.normal,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(width: 5),
              Align(
                child: Container(
                  height: 120,
                  width: 70,
                  margin: const EdgeInsets.only(top: 10, left: 15, right: 0),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 15,
                  ),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(color: Colors.black, width: 2.0),
                    borderRadius:
                        const BorderRadius.all(Radius.elliptical(60, 50)),
                  ),
                  alignment: Alignment.center,
                  child: const Text.rich(
                    TextSpan(
                      text: "Fat\n",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: "8 Gram\n\n",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.normal),
                        ),
                        TextSpan(
                          text: "   12%",
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.normal,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(width: 5),
              Align(
                child: Container(
                  height: 120,
                  width: 70,
                  margin: const EdgeInsets.only(top: 10, left: 15, right: 0),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 15,
                  ),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(color: Colors.black, width: 2.0),
                    borderRadius:
                        const BorderRadius.all(Radius.elliptical(60, 50)),
                  ),
                  alignment: Alignment.center,
                  child: const Text.rich(
                    TextSpan(
                      text: "Energy\n",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 12),
                      children: [
                        TextSpan(
                          text: "140 Kcal\n\n",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.normal),
                        ),
                        TextSpan(
                          text: "   40%",
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.normal,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          Text(
            'Details',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 16),
          Text(
            widget.food.description,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 30),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 0),
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
            child: const Text.rich(
              TextSpan(
                text: '\$' "12.75\n",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: "Delivery Not Included",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}