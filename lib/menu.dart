class Menu {
  String day;
  String imageUrl;
  List<Item> foodItems;

  Menu(
    this.day,
    this.imageUrl,
    this.foodItems,
  );
  static List<Menu> samples = [
    Menu(
      'Monday',
      'assets/classic-cheese-pizza.jpg',
      [
        Item('Classic Cheese Pizza'),
        Item('Superhero Spinach'),
        Item('New York Cookie Treat'),
        Item('Salad Bar Veggie Dippers'),
      ],
    ),
    Menu(
      'Tuesday',
      'assets/chicken-sandwich.jpeg',
      [
        Item('Chicken Sandwich'),
        Item('Whole Wheat Bun'),
        Item('Grab and Go Salad'),
        Item('Roasted Chickpeas With Basil Pesto'),
        Item('Seasoned Wedge Fries'),
        Item('Salad Bar Pickles/ Lettuce and Tomato'),
      ],
    ),
    Menu(
      'Wednesday',
      'assets/mozarella-sticks.jpeg',
      [
        Item('Mozarella Sticks'),
        Item('Fresh Broccoli and Cauliflower Florets'),
        Item('Garlic Kno'),
        Item('Salad Bar Veggie Dippers'),
      ],
    ),
    Menu(
      'Thursday',
      'assets/chicken-thigh.jpg',
      [
        Item('Raosted Chicken Thigh'),
        Item('Grab and Go Salad'),
        Item('Slow Roasted Baby Carrots'),
        Item('Dinner Roll'),
        Item('Fresh Apples'),
        Item('Salad Bar Confetti Corn Salad'),
      ],
    ),
    Menu(
      'Friday',
      'assets/southwest-burrito.JPG',
      [
        Item('Southwest Burrito'),
        Item('Black Bean and Plantain Power Bowl'),
        Item('Green Garden Salad'),
        Item('Salad Bar Fresh Cilantro Healthy Cole Slaw'),
      ],
    ),
  ];
}

class Item {
  String name;

  Item(
    this.name,
  );
}
