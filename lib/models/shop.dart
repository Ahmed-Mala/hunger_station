import 'package:hunger_station/models/category.dart';

class Shop {
  String id;
  String name;
  double lowerPrice;
  double deliveryPrice;
  String iconURL;
  double rating;
  bool isAdd;
  String status;
  List<Category> categories;

  Shop({
    this.id,
    this.categories,
    this.deliveryPrice,
    this.iconURL,
    this.isAdd,
    this.lowerPrice,
    this.name,
    this.rating,
    this.status,
  });

  String getCategorisNames() {
    String result = "";
    for (int i = 0; i < categories.length; i++) {
      if (result == "")
        result = categories[i].name;
      else
        result = result + ", " + categories[i].name;
    }
    return result;
  }
}
