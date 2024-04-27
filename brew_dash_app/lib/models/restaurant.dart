import 'package:brew_dash_app/models/food.dart';

class Restaurant {
  //list  of the food menu
  final List<Food> _menu = [
    //// Coffees ///////////////////////////////////////////
    Food(
      name: "Cappuccino",
      description: "Creamy espresso with steamed milk and frothy foam",
      imagePath: "lib/images/coffee/cappuccino.png",
      price: 3.49,
      category: FoodCategory.coffee,
      availableAddons: [
        Addon(name: "Extra Shot of Espresso", price: 0.75),
        Addon(name: "Chocolate Powder", price: 0.50),
      ]
    ),

    Food(
      name: "Latte",
      description: "Smooth espresso with steamed milk",
      imagePath: "lib/images/coffee/latte.png",
      price: 3.99,
      category: FoodCategory.coffee,
      availableAddons: [
        Addon(name: "Vanilla Syrup", price: 0.75),
        Addon(name: "Caramel Drizzle", price: 0.50),
      ]
    ),

    Food(
      name: "Mocha",
      description: "Espresso mixed with chocolate and steamed milk",
      imagePath: "lib/images/coffee/mocha.png",
      price: 4.29,
      category: FoodCategory.coffee,
      availableAddons: [
        Addon(name: "Whipped Cream", price: 0.50),
        Addon(name: "Chocolate Syrup", price: 0.75),
      ]
    ),

    Food(
      name: "Americano",
      description: "Diluted espresso with hot water",
      imagePath: "lib/images/coffee/americano.png",
      price: 2.79,
      category: FoodCategory.coffee,
      availableAddons: [
        Addon(name: "Extra Shot of Espresso", price: 0.75),
        Addon(name: "Flavored Syrup", price: 0.75),
      ]
    ),

    Food(
      name: "Macchiato",
      description: "Espresso 'marked' with a dash of steamed milk",
      imagePath: "lib/images/coffee/macchiato.png",
      price: 3.29,
      category: FoodCategory.coffee,
      availableAddons: [
        Addon(name: "Caramel Drizzle", price: 0.50),
        Addon(name: "Vanilla Syrup", price: 0.75),
      ]
    ),


/////////////////// Teas ///////////////////////////////////////////
    Food(
      name: "Chai Tea",
      description: "Spiced black tea with milk and spices",
      imagePath: "lib/images/teas/chai_tea.png",
      price: 2.49,
      category: FoodCategory.tea,
      availableAddons: [
        Addon(name: "Vanilla Syrup", price: 0.75),
        Addon(name: "Cinnamon Stick", price: 0.50),
      ]
    ),

    Food(
      name: "Earl Grey Tea",
      description: "Flavored black tea infused with bergamot oil",
      imagePath: "lib/images/teas/earl_grey_tea.png",
      price: 2.99,
      category: FoodCategory.tea,
      availableAddons: [
        Addon(name: "Lavender Honey", price: 0.50),
        Addon(name: "Lemon Zest", price: 0.75),
      ]
    ),

    Food(
      name: "Peppermint Tea",
      description: "Refreshing herbal tea made from peppermint leaves",
      imagePath: "lib/images/teas/peppermint_tea.png",
      price: 2.29,
      category: FoodCategory.tea,
      availableAddons: [
        Addon(name: "Honey", price: 0.25),
        Addon(name: "Fresh Mint Leaves", price: 0.50),
      ]
    ),

    Food(
      name: "Jasmine Tea",
      description: "Fragrant green tea infused with jasmine blossoms",
      imagePath: "lib/images/teas/jasmine_tea.png",
      price: 2.79,
      category: FoodCategory.tea,
      availableAddons: [
        Addon(name: "Agave Syrup", price: 0.50),
        Addon(name: "Orange Slice", price: 0.50),
      ]
    ),

    Food(
      name: "Rooibos Tea",
      description: "Red herbal tea with a naturally sweet flavor",
      imagePath: "lib/images/teas/rooibos_tea.png",
      price: 3.49,
      category: FoodCategory.tea,
      availableAddons: [
        Addon(name: "Almond Milk", price: 0.75),
        Addon(name: "Caramel Drizzle", price: 0.50),
      ]
    ),


////////////////////////////// Smoothies///////////////////////////////////////////
    Food(
      name: "Mango Tango Smoothie",
      description: "Tropical blend of fresh mango and pineapple",
      imagePath: "lib/images/smoothies/mango_smoothie.png",
      price: 3.99,
      category: FoodCategory.smoothies,
      availableAddons: [
        Addon(name: "Coconut Milk", price: 0.75),
        Addon(name: "Passion Fruit Syrup", price: 0.50),
      ]
    ),

    Food(
      name: "Green Goddess Smoothie",
      description: "Healthy mix of spinach, kale, and banana",
      imagePath: "lib/images/smoothies/green_smoothie.png",
      price: 4.29,
      category: FoodCategory.smoothies,
      availableAddons: [
        Addon(name: "Flaxseed", price: 0.50),
        Addon(name: "Greek Yogurt", price: 0.75),
      ]
    ),

    Food(
      name: "Peach Paradise Smoothie",
      description: "Smooth blend of ripe peaches and creamy yogurt",
      imagePath: "lib/images/smoothies/peach_smoothie.png",
      price: 3.79,
      category: FoodCategory.smoothies,
      availableAddons: [
        Addon(name: "Honey", price: 0.25),
        Addon(name: "Granola", price: 0.50),
      ]
    ),

    Food(
      name: "Berry Burst Smoothie",
      description: "Refreshing mix of strawberries, blueberries, and raspberries",
      imagePath: "lib/images/smoothies/berry_burst_smoothie.png",
      price: 4.49,
      category: FoodCategory.smoothies,
      availableAddons: [
        Addon(name: "Wheatgrass Shot", price: 0.75),
        Addon(name: "Acai Powder", price: 0.50),
      ]
    ),

    Food(
      name: "Tropical Sunrise Smoothie",
      description: "Exotic blend of mango, banana, and passion fruit",
      imagePath: "lib/images/smoothies/tropical_smoothie.png",
      price: 4.19,
      category: FoodCategory.smoothies,
      availableAddons: [
        Addon(name: "Chia Seeds", price: 0.50),
        Addon(name: "Coconut Flakes", price: 0.50),
      ]
    ),


//////////////////////// // Bubble Tea
    Food(
      name: "Matcha Bubble Tea",
      description: "Rich matcha green tea with sweet milk and chewy tapioca pearls",
      imagePath: "lib/images/bubbleteas/matcha_bubble_tea.png",
      price: 5.49,
      category: FoodCategory.bubbleTea,
      availableAddons: [
        Addon(name: "Red Bean", price: 0.75),
        Addon(name: "Grass Jelly", price: 0.50),
      ]
    ),

    Food(
      name: "Honeydew Bubble Tea",
      description: "Refreshing honeydew-flavored milk tea with tapioca pearls",
      imagePath: "lib/images/bubbleteas/honeydew_bubble_tea.png",
      price: 4.79,
      category: FoodCategory.bubbleTea,
      availableAddons: [
        Addon(name: "Mango Popping Boba", price: 0.75),
        Addon(name: "Lychee Jelly", price: 0.50),
      ]
    ),

    Food(
      name: "Strawberry Bubble Tea",
      description: "Sweet strawberry milk tea with chewy tapioca pearls",
      imagePath: "lib/images/bubbleteas/strawberry_bubble_tea.png",
      price: 4.99,
      category: FoodCategory.bubbleTea,
      availableAddons: [
        Addon(name: "Aloe Vera", price: 0.50),
        Addon(name: "Peach Popping Boba", price: 0.75),
      ]
    ),

    Food(
      name: "Coconut Bubble Tea",
      description: "Creamy coconut milk tea with tapioca pearls",
      imagePath: "lib/images/bubbleteas/coconut_bubble_tea.png",
      price: 5.29,
      category: FoodCategory.bubbleTea,
      availableAddons: [
        Addon(name: "Custard Pudding", price: 0.75),
        Addon(name: "Jasmine Jelly", price: 0.50),
      ]
    ),

    Food(
      name: "Mango Bubble Tea",
      description: "Tropical mango-flavored milk tea with chewy tapioca pearls",
      imagePath: "lib/images/bubbleteas/mango_bubble_tea.png",
      price: 4.69,
      category: FoodCategory.bubbleTea,
      availableAddons: [
        Addon(name: "Passion Fruit Popping Boba", price: 0.75),
        Addon(name: "Coconut Jelly", price: 0.50),
      ]
    ),


////////////////// Other Drinks
    Food(
      name: "Turmeric Golden Milk",
      description: "Warm turmeric-infused milk with spices",
      imagePath: "lib/images/specials/turmeric_milk.png",
      price: 4.49,
      category: FoodCategory.otherDrinks,
      availableAddons: [
        Addon(name: "Honey", price: 0.50),
        Addon(name: "Cinnamon Powder", price: 0.75),
      ]
    ),

    Food(
      name: "Horchata",
      description: "Traditional Mexican rice milk drink with cinnamon",
      imagePath: "lib/images/specials/horchata.png",
      price: 3.79,
      category: FoodCategory.otherDrinks,
      availableAddons: [
        Addon(name: "Caramel Syrup", price: 0.50),
        Addon(name: "Whipped Cream", price: 0.75),
      ]
    ),

    Food(
      name: "Lemonade Iced Tea",
      description: "Refreshing blend of iced tea and lemonade",
      imagePath: "lib/images/specials/lemonade_iced_tea.png",
      price: 3.29,
      category: FoodCategory.otherDrinks,
      availableAddons: [
        Addon(name: "Mint Leaves", price: 0.50),
        Addon(name: "Raspberry Syrup", price: 0.75),
      ]
    ),

    Food(
      name: "Spiced Hot Chocolate",
      description: "Rich hot chocolate with a blend of spices",
      imagePath: "lib/images/specials/spiced_hot_chocolate.png",
      price: 4.29,
      category: FoodCategory.otherDrinks,
      availableAddons: [
        Addon(name: "Marshmallows", price: 0.50),
        Addon(name: "Peppermint Syrup", price: 0.75),
      ]
    ),

    Food(
      name: "Vanilla Bean Frappuccino",
      description: "Creamy frappuccino with vanilla bean flavor",
      imagePath: "lib/images/specials/vanilla_frappuccino.png",
      price: 4.99,
      category: FoodCategory.otherDrinks,
      availableAddons: [
        Addon(name: "Caramel Drizzle", price: 0.50),
        Addon(name: "Chocolate Shavings", price: 0.75),
      ]
    ),

  ];


  

}