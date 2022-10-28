class Menu {
  String day;
  Entree mainEntree;
  List<Entree> entrees;

  Menu(this.day, this.mainEntree, this.entrees);

  static List<Menu> menus = [
    Menu("Monday", Entree("Zucchini Carrot Breakfast Bread", "assets/zucchini_carrot_breakfast_bread.jpg"), [Entree("Zucchini Carrot Breakfast Bread", "assets/zucchini_carrot_breakfast_bread.jpg"), Entree("New York Yogurt Choice", "assets/new_york_yogurt_choice.jpg"), Entree("Hot Oatmeal", "assets/hot_oatmeal.jpg"), Entree("Seasonal Fresh Fruit", "assets/seasonal_fresh_fruit.jpg")]),
    Menu("Tuesday", Entree("Mini Blueberry Waffles", "assets/mini_blueberry_waffles.jpg"), [Entree("Mini Blueberry Waffles", "assets/mini_blueberry_waffles.jpg"), Entree("Fresh Plums", "assets/fresh_plums.jpg")]),
    Menu("Wednesday", Entree("Mozzarella Cheese Stick", "assets/mozzarella_cheese_stick.jpg"),[Entree("Mozzarella Cheese Stick", "assets/mozzarella_cheese_stick.jpg"), Entree("Banana Muffin", "assets/banana_muffin.jpg"), Entree("Fresh Oranges", "assets/fresh_oranges.jpg")]),
    Menu("Thursday", Entree("Buttermilk Pancakes", "assets/buttermilk_pancakes.jpg"), [Entree("Buttermilk Pancakes", "assets/buttermilk_pancakes.jpg"), Entree("Turkey Sausage", "assets/turkey_sausage.jpg"), Entree("Fresh Apples", "assets/fresh_apples.jpg")]),
    Menu("Friday", Entree("Assorted Fresh Bagels (served with Cream Cheese & Jelly)", "assets/assorted_fresh_bagels.jpg"), [Entree("Assorted Fresh Bagels (served with Cream Cheese & Jelly)", "assets/assorted_fresh_bagels.jpg"), Entree("Fresh Pears", "assets/fresh_pears.jpg")])
  ];
}

class Entree {
  String name;
  String imageUrl;

  Entree(this.name, this.imageUrl);
}
