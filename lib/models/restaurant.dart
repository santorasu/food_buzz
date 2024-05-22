import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:food_buzz/models/cart_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';

//list of food menu
class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Classic Cheeseburger",
      description:
          "A juicy fatty burger with melted chedder, cheese guaranteed to make your toungs juicy",
      imagePath: "lib/images/burgers/burger1.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Cucumber", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),

    Food(
      name: "Classic alohaburger",
      description:
          "A spicy fatty burger with no chedder, cheese guaranteed to make your toungs juicy",
      imagePath: "lib/images/burgers/burger2.jpg",
      price: 0.89,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Spicy Cheese", price: 0.89),
        Addon(name: "Cucumber", price: 1.89),
        Addon(name: "Avocado", price: 2.89),
      ],
    ),

    Food(
      name: "Classic blueburger",
      description:
          "A sweet burger with melted chedder, cheese guaranteed to make your toungs juicy",
      imagePath: "lib/images/burgers/burger3.jpg",
      price: 3.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 3.99),
        Addon(name: "Cucumber", price: 3.79),
        Addon(name: "Avocado", price: 4.59),
      ],
    ),

    Food(
      name: "Classic Chickenburger",
      description:
          "A chicken burger with melted chedder, cheese guaranteed to make your toungs juicy",
      imagePath: "lib/images/burgers/burger4.jpg",
      price: 6.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 6.99),
        Addon(name: "Cucumber", price: 6.99),
        Addon(name: "Avocado", price: 6.99),
      ],
    ),

    Food(
      name: "Classic newburger",
      description:
          "A juicy fatty burger with melted chedder, cheese guaranteed to make your toungs juicy",
      imagePath: "lib/images/burgers/burger5.jpg",
      price: 7.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 7.99),
        Addon(name: "Cucumber", price: 7.99),
        Addon(name: "Avocado", price: 9.99),
      ],
    ),

    //salads

    Food(
      name: "Classic Salad",
      description:
          "A nice Salad with melted chedder, cheese guaranteed to make your toungs juicy",
      imagePath: "lib/images/salads/salad1.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Onion", price: 0.99),
        Addon(name: "Cucumber", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),

    Food(
      name: "New Salad2",
      description:
          "A nice Salad with melted chedder, cheese guaranteed to make your toungs juicy",
      imagePath: "lib/images/salads/salad2.jpg",
      price: 1.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 1.99),
        Addon(name: "Cucumber", price: 2.99),
        Addon(name: "Avocado", price: 3.99),
      ],
    ),

    Food(
      name: "Chinese Salad",
      description:
          "A Chinese Salad with melted chedder, cheese guaranteed to make your toungs juicy",
      imagePath: "lib/images/salads/salad3.jpg",
      price: 3.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 3.99),
        Addon(name: "Cucumber", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),

    Food(
      name: "Chinese Salad2",
      description:
          "A Chinese Salad, cheese guaranteed to make your toungs juicy",
      imagePath: "lib/images/salads/salad4.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Cucumber", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),

    Food(
      name: "Chinese Salad3",
      description:
          "A Chinese Special salad with melted chedder, cheese guaranteed to make your toungs juicy",
      imagePath: "lib/images/salads/salad5.jpg",
      price: 6.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 6.99),
        Addon(name: "Cucumber", price: 9.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),

    //sides

    Food(
      name: "Garlic Bread Side1",
      description:
          "A Garlic Bread  Special  with melted chedder, cheese guaranteed to make your toungs juicy",
      imagePath: "lib/images/sides/side1.jpg",
      price: 6.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Banana", price: 6.99),
        Addon(name: "Roti", price: 9.99),
        Addon(name: "Paratha", price: 2.99),
      ],
    ),

    Food(
      name: "Garlic Bread",
      description:
          "A Garlic Bread  Special  with melted chedder, cheese guaranteed to make your toungs juicy",
      imagePath: "lib/images/sides/side2.jpg",
      price: 1.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Banana", price: 1.99),
        Addon(name: "Roti", price: 4.99),
        Addon(name: "Paratha", price: 2.99),
      ],
    ),

    Food(
      name: "Paratha Bread",
      description:
          "A Garlic Bread  Special  with melted chedder, cheese guaranteed to make your toungs juicy",
      imagePath: "lib/images/sides/side3.jpg",
      price: 6.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Banana", price: 6.99),
        Addon(name: "Roti", price: 9.99),
        Addon(name: "Paratha", price: 2.99),
      ],
    ),

    Food(
      name: "Roti Bread",
      description:
          "A Roti Bread  Special  with melted chedder, cheese guaranteed to make your toungs juicy",
      imagePath: "lib/images/sides/side4.jpg",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Banana", price: 0.99),
        Addon(name: "Roti", price: 0.99),
        Addon(name: "Paratha", price: 2.99),
      ],
    ),

    Food(
      name: "NunRoti Bread",
      description:
          "A Garlic Bread  Special  with melted chedder, cheese guaranteed to make your toungs juicy",
      imagePath: "lib/images/sides/side5.jpg",
      price: 6.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Banana", price: 6.99),
        Addon(name: "Roti", price: 9.99),
        Addon(name: "Paratha", price: 2.99),
      ],
    ),

    //desserts

    Food(
      name: "Mithai",
      description:
          "A Sweety sweet, cheese guaranteed to make your toungs juicy",
      imagePath: "lib/images/desserts/dessert1.jpg",
      price: 1.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Sprinkles", price: 0.99),
        Addon(name: "Halua", price: 1.99),
        Addon(name: "Mithai", price: 4.99),
      ],
    ),

    Food(
      name: "Laddu",
      description:
          "A Sweety sweet, cheese guaranteed to make your toungs juicy",
      imagePath: "lib/images/desserts/dessert2.jpg",
      price: 2.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "HALLU", price: 0.99),
        Addon(name: "Halua", price: 2.99),
        Addon(name: "Mithai", price: 4.99),
      ],
    ),

    Food(
      name: "Halua",
      description:
          "A Sweety sweet, cheese guaranteed to make your toungs juicy",
      imagePath: "lib/images/desserts/dessert3.jpg",
      price: 1.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Sprinkles", price: 0.99),
        Addon(name: "Halua", price: 1.99),
        Addon(name: "Mithai", price: 4.99),
      ],
    ),

    Food(
      name: "Payesh",
      description:
          "A Sweety sweet, cheese guaranteed to make your toungs juicy",
      imagePath: "lib/images/desserts/dessert4.jpg",
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Sprinkles", price: 0.99),
        Addon(name: "Halua", price: 1.99),
        Addon(name: "Mithai", price: 4.99),
      ],
    ),

    Food(
      name: "Finni",
      description:
          "A Sweety sweet, cheese guaranteed to make your toungs juicy",
      imagePath: "lib/images/desserts/dessert1.jpg",
      price: 9.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Sprinkles", price: 0.99),
        Addon(name: "Halua", price: 1.99),
        Addon(name: "Mithai", price: 4.99),
      ],
    ),

    //drinks

    Food(
      name: "Orange Juice",
      description:
          "A Sweety sweet, cheese guaranteed to make your toungs juicy",
      imagePath: "lib/images/drinks/drink1.jpg",
      price: 9.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Sprinkles", price: 0.99),
        Addon(name: "LEbu", price: 1.99),
        Addon(name: "Mithai", price: 4.99),
      ],
    ),

    Food(
      name: "Avocado Juice",
      description:
          "A Sweety sweet, cheese guaranteed to make your toungs juicy",
      imagePath: "lib/images/drinks/drink2.jpg",
      price: 9.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Sprinkles", price: 0.99),
        Addon(name: "LEbu", price: 1.99),
        Addon(name: "Mithai", price: 4.99),
      ],
    ),

    Food(
      name: "Mixed Juice",
      description:
          "A Sweety sweet, cheese guaranteed to make your toungs juicy",
      imagePath: "lib/images/drinks/drink3.jpg",
      price: 9.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Sprinkles", price: 0.99),
        Addon(name: "LEbu", price: 1.99),
        Addon(name: "Mithai", price: 4.99),
      ],
    ),

    Food(
      name: "Grape Juice",
      description:
          "A Sweety sweet, cheese guaranteed to make your toungs juicy",
      imagePath: "lib/images/drinks/drink4.jpg",
      price: 9.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Sprinkles", price: 0.99),
        Addon(name: "LEbu", price: 1.99),
        Addon(name: "Mithai", price: 4.99),
      ],
    ),

    Food(
      name: "Lemon Juice",
      description:
          "A Sweety sweet, cheese guaranteed to make your toungs juicy",
      imagePath: "lib/images/drinks/drink5.jpg",
      price: 9.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Sprinkles", price: 0.99),
        Addon(name: "LEbu", price: 1.99),
        Addon(name: "Mithai", price: 4.99),
      ],
    ),
  ];

  //Getters

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  //operations

  //user cart
  final List<CartItem> _cart = [];
  //add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    //check same

    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;

      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(CartItem(
        food: food,
        selectedAddons: selectedAddons,
      ));
    }
    notifyListeners();
  }

  //remove from cart

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  //get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  //get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  //clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  //generate a recipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your recipt.");
    receipt.writeln();

    //format the date ton include up to seconds only
    String formattedDate =
        DateFormat('yyyy-mm-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("-----------");

    for (final CartItem in _cart) {
      receipt.writeln(
          "${CartItem.quantity} x ${CartItem.food.name} - ${_formatPrice(CartItem.food.price)}");
      if (CartItem.selectedAddons.isNotEmpty) {
        receipt.writeln("  Add-ons: ${_formatAddons(CartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Items: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

  //format double valuer
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  //format list of addons
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
