import 'package:flutter_notebook_19th_story/ep1114_e_commerce_filters_app/src/model/shop_results.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final shopResultProvider = FutureProvider<List<ShopResult>>((ref) async {
  await Future.delayed(const Duration(seconds: 3));
  return [
    ShopResult(
      name: "2021 Apple 16-inch MacBook Pro",
      price: "2,639.90",
      isSoldOut: false,
      vendor: "Apple",
      img: "https://cdn.pixabay.com/photo/2015/01/08/18/24/children-593313_960_720.jpg",
    ),
    ShopResult(
      name: "2021 Apple 16-inch MacBook Pro",
      price: "2,639.90",
      isSoldOut: true,
      vendor: "Apple",
      img: "https://cdn.pixabay.com/photo/2015/01/08/18/24/children-593313_960_720.jpg",
    ),
    ShopResult(
      name: "2021 Apple 16-inch MacBook Pro",
      price: "2,639.90",
      isSoldOut: false,
      vendor: "Apple",
      img: "https://cdn.pixabay.com/photo/2015/01/08/18/24/children-593313_960_720.jpg",
    ),
    ShopResult(
      name: "2021 Apple 16-inch MacBook Pro",
      price: "2,639.90",
      isSoldOut: false,
      vendor: "Apple",
      img: "https://cdn.pixabay.com/photo/2015/01/08/18/24/children-593313_960_720.jpg",
    ),
    ShopResult(
      name: "2021 Apple 16-inch MacBook Pro",
      price: "2,639.90",
      isSoldOut: false,
      vendor: "Apple",
      img: "https://cdn.pixabay.com/photo/2015/01/08/18/24/children-593313_960_720.jpg",
    ),
    ShopResult(
      name: "2021 Apple 16-inch MacBook Pro",
      price: "2,639.90",
      isSoldOut: false,
      vendor: "Apple",
      img: "https://cdn.pixabay.com/photo/2015/01/08/18/24/children-593313_960_720.jpg",
    ),
  ];
  // return [];
});
