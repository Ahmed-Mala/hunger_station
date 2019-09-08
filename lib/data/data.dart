import 'package:hunger_station/models/category.dart';
import 'package:hunger_station/models/shop.dart';

List<Shop> getShops() {
  return [
    kudu,
    hashim,
    maestro,
    mcDonalds
  ];
}

Category coffee = Category(id: "1", name: "قهوة");
Category shawrma = Category(id: "2", name: "شاورما");
Category global = Category(id: "3", name: "عالمي");
Category traditional = Category(id: "4", name: "المأكولات التقليدية");
Category sandwiches = Category(id: "5", name: "ساندويشات");
Category healthyFood = Category(id: "6", name: "الطعام الصحي");
Category fastFood = Category(id: "7", name: "مأكولات سريعة");
Category candy = Category(id: "8", name: "حلويات");
Category drinks = Category(id: "9", name: "مشروبات");
Category asianFood = Category(id: "10", name: "مأكولات أسيوية");
Category italianFood = Category(id: "11", name: "مأكولات إيطالية");
Category juices = Category(id: "12", name: "عصائر");
Category arabicFood = Category(id: "13", name: "مأكولات عربية");
Category flower = Category(id: "14", name: "ورد");
Category americanFood = Category(id: "15", name: "مأكولات أمريكية");
Category seaFood = Category(id: "16", name: "مأكولات بحرية");
Category indianFood = Category(id: "17", name: "المأكولات الهندية");
Category mexicanFood = Category(id: "18", name: "مكسيكي");
Category turkishFood = Category(id: "19", name: "مأكولات تركية");
Category foodAndDrink = Category(id: "20", name: "أطعمة ومشروبات");

Shop kudu = Shop(
    id: "1",
    name: "كودو",
    deliveryPrice: 14,
    lowerPrice: 10,
    iconURL:
        "https://hsaa.hsobjects.com/h/restaurants/logo_ars/000/002/950/c40a49a5933981c2566a172b1d73c555-thumb.png",
    isAdd: true,
    rating: 4.1,
    status: null,
    categories: [
      fastFood,
      sandwiches,
    ]);

Shop hashim = Shop(
    id: "2",
    name: "هاشم",
    deliveryPrice: 15,
    lowerPrice: 10,
    iconURL:
        "https://hsaa.hsobjects.com/h/restaurants/logo_ars/000/005/744/1e8ca3e40b57f6eee41cee0800482d5a-thumb.jpg",
    isAdd: true,
    rating: 4.1,
    status: null,
    categories: [
      fastFood,
      arabicFood,
    ]);

Shop maestro = Shop(
  id: "3",
  name: "مايسترو بيتزا",
  iconURL:
      "https://hsaa.hsobjects.com/h/restaurants/logo_ars/000/002/706/e2153c0e2803ce4dfd0425bd6460ede1-thumb.png",
  deliveryPrice: 17.0,
  lowerPrice: 10.0,
  rating: 4.5,
  categories: [
    fastFood,
    italianFood,
  ],
);

Shop mcDonalds = Shop(
  id: "4",
  name: "ماكدونالدز",
  iconURL:
      "https://hsaa.hsobjects.com/h/restaurants/logo_ars/000/006/430/e9056bafcab0867657698c247fd9de90-thumb.jpg",
  deliveryPrice: 17.0,
  lowerPrice: 25.0,
  rating: 4.0,
  categories: [
    candy,
    fastFood,
    sandwiches,
    americanFood,
  ],
);
