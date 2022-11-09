class Food {
  Food({
    required this.id,
    required this.image,
    required this.name,
    required this.price,
    required this.kcal,
    required this.brand,
    required this.description,
  });

  String id;
  String image;
  String name;
  String price;
  String kcal;
  String brand;
  String description;

  factory Food.fromJson(Map<String, dynamic> json) => Food(
        id: json["id"],
        image: json["image"],
        name: json["name"],
        price: json["price"],
        kcal: json["kcal"],
        brand: json["brand"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "name": name,
        "price": price,
        "kcl": kcal,
        "cooking_time": brand,
        "description": description,
      };
}

final dummyFoods = [
  Food(
    id: '1',
    image: 'assets/images/1.png',
    name: 'Yellow Kiwis',
    price: '10',
    kcal: '100',
    brand: 'Talk',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.',
  ),
  Food(
    id: '2',
    image: 'assets/images/2.png',
    name: 'choko chiko',
    price: '10',
    kcal: '100',
    brand: 'Talk',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.',
  ),
  Food(
    id: '3',
    image: 'assets/images/3.png',
    name: 'Choco Bow',
    price: '10',
    kcal: '20',
    brand: 'Talk',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.',
  ),
  Food(
    id: '4',
    image: 'assets/images/4.png',
    name: 'Sexy Pinkys',
    price: '10',
    kcal: '60',
    brand: 'Talk',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.',
  ),
];
