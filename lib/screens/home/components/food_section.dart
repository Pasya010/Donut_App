import 'package:flutter/material.dart';
import 'package:donut_app/models/food_asset.dart';
import 'package:donut_app/detail/detail_screen.dart';

class NewArrivalProducts extends StatelessWidget {
  const NewArrivalProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: dummyFoods.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 30,
        crossAxisSpacing: 16,
        mainAxisExtent: 225,
      ),
      itemBuilder: (context, index) {
        Food food = dummyFoods[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailPage(food: food);
            }));
          },
          child: Container(
            height: 261,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 219, 219),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(120),
                        child: Image.asset(
                          food.image,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //Food Name
                    const SizedBox(height: 7),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Text(
                        food.name,
                        style: Theme.of(context).textTheme.headline6,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    
                    //Food Brand
                    const SizedBox(height: 4),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Row(
                        children: [
                          Text(
                            food.brand,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ],
                      ),
                    ),

                    //Add Button
                    Padding(
                      padding: const EdgeInsets.fromLTRB(95, 11, 0, 0,),
                      child: TextButton(
                        onPressed: () {}, 
                        child: const Text('Add',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                        ),))
                    ),
                  ],
                ),

                //Favorite Button
                const Positioned(
                  bottom: 10,
                  left: 20,
                  child: Icon(Icons.favorite_border, color: Colors.grey),
                ),

                //Price
                const Align(
                  alignment: Alignment.topRight,
                  child: Material(
                    color: Color.fromARGB(255, 240, 173, 153),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                    ),
                    child: InkWell(
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text('\$10')
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
